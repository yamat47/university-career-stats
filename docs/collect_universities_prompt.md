# 大学情報収集プロンプト

## 基本指示
以下のCSVファイルから指定された大学の情報を収集し、個別のYAMLファイルとして保存してください。

## ファイル構成
```
db/tmp/
├── all_universities.csv (全大学リスト - 855大学)
├── processed_universities.csv (処理済み大学リスト - 90大学)
├── remaining_universities.csv (未処理大学リスト - 760大学)
└── results/ (YAMLファイル保存先)
```

## 進捗状況の確認
```bash
# 処理済み大学数の確認
wc -l db/tmp/processed_universities.csv

# 未処理大学数の確認
wc -l db/tmp/remaining_universities.csv

# YAMLファイル数の確認
ls db/tmp/results/*.yaml | wc -l
```

## 実行手順

### 1. 大学の選択
**未処理大学から選択**: `@db/tmp/remaining_universities.csv`
**全大学から選択**: `@db/tmp/all_universities.csv`
**処理済み確認**: `@db/tmp/processed_universities.csv`

- 行番号を指定する場合: `offset: [開始行], limit: [行数]`
- 大学名を指定する場合: 直接大学名とURLを指定
- **推奨**: 未処理大学リストから10-20校ずつ処理

### 2. エージェント実行（並列処理可能）
選択した各大学に対して、university-info-collector エージェントを並列で実行します。
各エージェントへの指示内容：
```
[大学名]（[URL]）のウェブサイトから、以下の情報を収集してください：

1. 大学名（日本語）
2. 全ての学部名（日本語）
3. 各学部の学科名（日本語）
4. キャンパス情報：
   - キャンパス名
   - キャンパス住所
   - 各学部がどのキャンパスにあるか

注意事項：
- 学部と学科の情報のみ（コースや専攻の詳細は不要）
- 日本語名称のみ（英語名は不要）
- 入学定員は不要
- 現在の学部構成のみ（大学院は不要）
```

### 3. YAML保存（並列処理可能）
収集した各大学の情報を以下の形式でYAMLファイルに保存：
- ファイル名: `db/tmp/results/[大学名（ローマ字またはアンダースコア区切り）].yaml`
- 形式:
```yaml
university:
  name: [大学名]

campuses:
  - name: [キャンパス名]
    address: [住所]

faculties:
  - name: [学部名]
    campus_names:
      - [キャンパス名]
    departments:
      - name: [学科名]

metadata:
  extraction_date: [YYYY-MM-DD]
  sources:
    - [URL]
  extraction_status: success|partial|failed
```

## 並列実行の例

### 例1: 3大学を並列処理
```
1. CSVから3大学を選択（例: 行15-17）
2. 3つのエージェントを同時に起動
3. 各エージェントの結果を受け取り次第、YAMLファイルを並列で作成
```

### 例2: 複数大学の一括処理
```
実行対象:
- 筑波大学（15行目）
- 東京大学（20行目）  
- 京都大学（35行目）

並列実行:
- 3つのuniversity-info-collectorエージェントを同時起動
- 完了した順にYAMLファイルを生成
```

## ファイル命名規則
- 北海道大学 → `hokkaido_university.yaml`
- 東北大学 → `tohoku_university.yaml`
- 東京工業大学 → `tokyo_institute_of_technology.yaml`
- 大阪大学 → `osaka_university.yaml`

## エラーハンドリング
- エージェントが部分的な情報しか取得できなかった場合: `extraction_status: partial`として保存
- エージェントが失敗した場合: `extraction_status: failed`として、取得できた範囲の情報を保存
- タイムアウトした場合: 他の大学の処理を継続

## 処理状況の管理

### 処理完了後の更新
1. **処理済みCSVの更新**: 新しく処理した大学を`processed_universities.csv`に追加
2. **未処理CSVの更新**: 処理した大学を`remaining_universities.csv`から削除
3. **進捗レポート**: 現在の処理状況を報告

### 品質管理
- `extraction_status: success` - 完全に情報取得成功
- `extraction_status: partial` - 部分的な情報のみ取得
- `extraction_status: failed` - 情報取得失敗

## 実行例コマンド

### 推奨実行パターン
「未処理大学リストの最初の10大学の情報を並列で収集してYAMLに保存してください」

### 進捗確認
「現在の処理状況を確認してください（処理済み/未処理の大学数）」

### 特定カテゴリの処理
「未処理大学リストから国立大学のみ10校を並列で処理してください」

### 継続処理
「前回の続きから10大学を処理してください」

#!/bin/bash

BASE_DIR="/Users/yamat47/ghq/github.com/yamat47/university-career-stats/db/tmp/results"

# 女子栄養大学
cat > "$BASE_DIR/kagawa_nutrition_university.yaml" << 'EOF'
university:
  name: 女子栄養大学

campuses:
  - name: 坂戸キャンパス
    address: 〒350-0288 埼玉県坂戸市千代田3-9-21
  - name: 駒込キャンパス
    address: 〒170-8481 東京都豊島区駒込3-24-3

faculties:
  - name: 栄養学部
    campus_names:
      - 坂戸キャンパス
    departments:
      - name: 実践栄養学科
      - name: 保健栄養学科
      - name: 食文化栄養学科
  - name: 短期大学部
    campus_names:
      - 駒込キャンパス
    departments:
      - name: 食物栄養学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.eiyo.ac.jp/
  extraction_status: success
EOF

# 東都大学
cat > "$BASE_DIR/tohto_university.yaml" << 'EOF'
university:
  name: 東都大学

campuses:
  - name: 深谷キャンパス
    address: 〒366-0052 埼玉県深谷市上柴町西4-2-11
  - name: 幕張キャンパス
    address: 〒261-0021 千葉県千葉市美浜区ひび野1-1
  - name: 沼津キャンパス
    address: 〒410-0032 静岡県沼津市日の出町1-1

faculties:
  - name: ヒューマンケア学部
    campus_names:
      - 深谷キャンパス
    departments:
      - name: 看護学科
  - name: 管理栄養学部
    campus_names:
      - 深谷キャンパス
    departments:
      - name: 管理栄養学科
  - name: 幕張ヒューマンケア学部
    campus_names:
      - 幕張キャンパス
    departments:
      - name: 看護学科
      - name: 理学療法学科
      - name: 臨床工学科
      - name: 健康科学科
  - name: 沼津ヒューマンケア学部
    campus_names:
      - 沼津キャンパス
    departments:
      - name: 看護学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.tohto.ac.jp/
  extraction_status: success
EOF

# 日本保健医療大学
cat > "$BASE_DIR/japan_university_of_health_sciences.yaml" << 'EOF'
university:
  name: 日本保健医療大学

campuses:
  - name: 幸手北キャンパス
    address: 〒340-0113 埼玉県幸手市幸手1961-2
  - name: 幸手南キャンパス
    address: 〒340-0145 埼玉県幸手市平須賀2-555

faculties:
  - name: 保健医療学部
    campus_names:
      - 幸手北キャンパス
      - 幸手南キャンパス
    departments:
      - name: 看護学科
      - name: 理学療法学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.jhsu.ac.jp/
  extraction_status: success
EOF

# 文教大学
cat > "$BASE_DIR/bunkyo_university.yaml" << 'EOF'
university:
  name: 文教大学

campuses:
  - name: 越谷キャンパス
    address: 〒343-8511 埼玉県越谷市南荻島3337
  - name: 湘南キャンパス
    address: 〒253-8550 神奈川県茅ヶ崎市行谷1100
  - name: 東京あだちキャンパス
    address: 〒121-8577 東京都足立区花畑5-6-1

faculties:
  - name: 教育学部
    campus_names:
      - 越谷キャンパス
    departments:
      - name: 学校教育課程
      - name: 発達教育課程
  - name: 人間科学部
    campus_names:
      - 越谷キャンパス
    departments:
      - name: 人間科学科
      - name: 臨床心理学科
      - name: 心理学科
  - name: 文学部
    campus_names:
      - 越谷キャンパス
    departments:
      - name: 日本語日本文学科
      - name: 英米語英米文学科
      - name: 中国語中国文学科
      - name: 外国語学科
  - name: 情報学部
    campus_names:
      - 湘南キャンパス
    departments:
      - name: 情報システム学科
      - name: 情報社会学科
      - name: データサイエンス学科
      - name: メディア表現学科
  - name: 健康栄養学部
    campus_names:
      - 湘南キャンパス
    departments:
      - name: 管理栄養学科
  - name: 国際学部
    campus_names:
      - 東京あだちキャンパス
    departments:
      - name: 国際理解学科
      - name: 国際観光学科
  - name: 経営学部
    campus_names:
      - 東京あだちキャンパス
    departments:
      - name: 経営学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.bunkyo.ac.jp/
  extraction_status: success
EOF

echo "Created batch YAML files for first set"
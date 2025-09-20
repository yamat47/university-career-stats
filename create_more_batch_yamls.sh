#!/bin/bash

BASE_DIR="/Users/yamat47/ghq/github.com/yamat47/university-career-stats/db/tmp/results"

# 放送大学
cat > "$BASE_DIR/the_open_university_of_japan.yaml" << 'EOF'
university:
  name: 放送大学

campuses:
  - name: 本部キャンパス
    address: 〒261-8586 千葉市美浜区若葉2-11
  - name: 学習センター・サテライトスペース
    address: 全国47都道府県57拠点（各都道府県に最低1箇所の学習センター）

faculties:
  - name: 教養学部
    campus_names:
      - 本部キャンパス
      - 学習センター・サテライトスペース
    departments:
      - name: 教養学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.ouj.ac.jp/
  extraction_status: success
EOF

# 千葉科学大学
cat > "$BASE_DIR/chiba_institute_of_science.yaml" << 'EOF'
university:
  name: 千葉科学大学

campuses:
  - name: 本部キャンパス
    address: 〒288-0025 千葉県銚子市潮見町3番
  - name: マリーナキャンパス
    address: 〒288-0025 千葉県銚子市潮見町15-8

faculties:
  - name: 薬学部
    campus_names:
      - 本部キャンパス
      - マリーナキャンパス
    departments:
      - name: 薬学科
  - name: 危機管理学部
    campus_names:
      - 本部キャンパス
      - マリーナキャンパス
    departments:
      - name: 危機管理学科
      - name: 保健医療学科
      - name: 航空技術危機管理学科
      - name: 動物危機管理学科
  - name: 看護学部
    campus_names:
      - 本部キャンパス
      - マリーナキャンパス
    departments:
      - name: 看護学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.cis.ac.jp/
  extraction_status: success
EOF

# 愛国学園大学
cat > "$BASE_DIR/aikoku_gakuen_university.yaml" << 'EOF'
university:
  name: 愛国学園大学

campuses:
  - name: 四街道キャンパス
    address: 〒284-0005 千葉県四街道市四街道1532

faculties:
  - name: 人間文化学部
    campus_names:
      - 四街道キャンパス
    departments:
      - name: 人間文化学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://aikoku-u.ac.jp/
  extraction_status: success
EOF

# 開智国際大学
cat > "$BASE_DIR/kaichi_international_university.yaml" << 'EOF'
university:
  name: 開智国際大学

campuses:
  - name: 開智国際大学キャンパス
    address: 〒277-0005 千葉県柏市柏1225-6

faculties:
  - name: 教育学部
    campus_names:
      - 開智国際大学キャンパス
    departments:
      - name: 教育学科
  - name: 国際教養学部
    campus_names:
      - 開智国際大学キャンパス
    departments:
      - name: 国際教養学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.kaichi.ac.jp/
  extraction_status: success
EOF

# 三育学院大学
cat > "$BASE_DIR/saniku_gakuin_college.yaml" << 'EOF'
university:
  name: 三育学院大学

campuses:
  - name: 大多喜キャンパス
    address: 〒298-0297 千葉県夷隅郡大多喜町久我原1500
  - name: 東京校舎
    address: 〒167-0032 東京都杉並区天沼3-17-15

faculties:
  - name: 看護学部
    campus_names:
      - 大多喜キャンパス
      - 東京校舎
    departments:
      - name: 看護学科

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.saniku.ac.jp/
  extraction_status: success
EOF

# 星槎大学
cat > "$BASE_DIR/seisa_university.yaml" << 'EOF'
university:
  name: 星槎大学

campuses:
  - name: 横浜事務局
    address: 神奈川県横浜市青葉区さつきが丘8-80
  - name: 箱根キャンパス
    address: 神奈川県足柄下郡箱根町仙石原817-255
  - name: 横浜キャンパス（大学院）
    address: 神奈川県横浜市中区日本大通11番 横浜情報文化センター5階

faculties:
  - name: 共生科学部
    campus_names:
      - 箱根キャンパス
      - 横浜事務局
    departments:
      - name: 共生科学専攻
      - name: 初等教育専攻
      - name: 福祉専攻
      - name: スポーツ身体表現専攻
      - name: グローカルコミュニケーション専攻

metadata:
  extraction_date: 2025-09-20
  sources:
    - https://www.seisa.ac.jp/
  extraction_status: success
EOF

echo "Created more batch YAML files"
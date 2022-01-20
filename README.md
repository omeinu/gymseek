# Gymseekの概要

・岡山県内で自分に合ったジムを探すためのWebアプリです。

・フィットネスやヨガなど、自分に目的に合ったジムを検索することができます。

・自分の通っているジムがなければ、ジムを登録することもできます。

・自分の通っているジムの口コミをすることで、ジムに通う仲間を増やすことができるかもしれません。

# URL

http://gymseek.net

# 主な利用方法

・トップページの「さっそくジムを探す」から、すぐに自分に合った条件でジムを探すことができます。

・調べたいジムの名前がわかっている場合は、ヘッダーからすぐに検索して詳細を調べることもできます。

・調べたジムをクリックすると、ジムの詳しい情報や、地図上でジムがどこにあるかを調べることもできます。

・トップページからログイン（ゲストログイン）することができます。

・ログインすることで新しくジムを登録したり、ジムにコメントを残すことができます。

# 使用技術

・フロントエンド
  - HTML/SCSS
  - javascript
  - Bootstrap 4.3.1

・バックエンド
  - ruby 2.5.1
  - Ruby on Rails 5.2.4
  - Google Maps API

・インフラ
  - Docker / docker-compose
  - nginx
  - myaql 5.7
  - AWS(EC2, RDS, ROUTE53, S3, VPC)

・その他使用ツール
  - Visual Studio Code
  - draw.io
  - MySQL Workbench

# AWS構成図

# 機能一覧

・ログイン機能(devise)
  - アイコン設定
  - ゲストログイン
  - メール送信によるパスワード再設定

・ジム検索機能(ransack)
  - ジム名、市町村からの検索
  - オプションを指定した絞り込み検索

・アイコン画像保存(carrywave, S3)

・口コミ機能

・ページネーション(kaminari)

・Google Maps API

・画像リサイズ(Minimagick)

・静的ページ表示(high_voltage)

# テストフレームワーク

・RSpec
  - factories
  - models spec
  - requests spec
  - sytem spec

# ER図(MySQL Workbench)

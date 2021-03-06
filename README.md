# Gymseekの概要

<img width="1395" alt="スクリーンショット 2022-01-20 22 08 50" src="https://user-images.githubusercontent.com/86691510/150344970-bab35ab6-8556-427d-9775-44233e3da39a.png">

・岡山県内で自分に合ったジムを探すためのWebアプリです。

・フィットネスやヨガなど、自分に目的に合ったジムを検索することができます。

・自分の通っているジムがなければ、ジムを登録することもできます。

・自分の通っているジムの口コミをすることで、ジムに通う仲間を増やすことができるかもしれません。

# URL

http://gymseek.net

# 主な利用方法

・トップページの「さっそくジムを探す」から、すぐに自分に合った条件でジムを探すことができます。


![さっそく探す](https://user-images.githubusercontent.com/86691510/150367389-9f40e3c3-36c8-406b-a3f2-942563e20061.gif)


・調べたいジムの名前がわかっている場合は、ヘッダーからすぐに検索して詳細を調べることもできます。


![ジム名検索](https://user-images.githubusercontent.com/86691510/150370179-124d42fc-f012-4044-a5a6-7e239ae83fea.gif)


・調べたジムをクリックすると、ジムの詳しい情報や、地図上でジムがどこにあるかを調べることもできます。

<img width="1005" alt="スクリーンショット 2022-01-21 0 45 05" src="https://user-images.githubusercontent.com/86691510/150372285-36c55038-6f04-461b-bb40-fa8e0e472c0e.png">


・トップページからログイン（ゲストログイン）することができます。

![撮影](https://user-images.githubusercontent.com/86691510/150373187-d4ad8856-79e4-475a-a3ea-8d0a3f36903e.gif)

・ログインすることで新しくジムを登録したり、ジムにコメントを残すことができます。

![撮影](https://user-images.githubusercontent.com/86691510/150373706-d241f5e8-031b-47ee-a130-b995b0673bbd.gif)

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
<img width="816" alt="スクリーンショット 2022-01-20 21 16 22" src="https://user-images.githubusercontent.com/86691510/150340340-7ca814c0-bc32-450b-9025-54acec2fc595.png">


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
<img width="816" alt="スクリーンショット 2022-01-20 21 16 22" src="https://user-images.githubusercontent.com/86691510/150338687-680c0c81-3592-4abc-99ca-e28319f2efcd.png">

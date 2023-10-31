# 第５回課題

## 組み込みサーバーでのアプリケーション実行
- 必要なツールのインストール（git,Node,yarn,ruby,mysql）
- config/database.ymlを編集
- bin/setupでbundelインストール、DB作成
![0501](./images/0501.png)

## Nginx＋Unicornでのアプリケーション実行
- NginxとUnicornのインストール
- /etc/nginx/nginx.confを編集
- config/unicorn.rbを編集
![0502](./images/0502.png)
![0503](./images/0503.png)

## ALB追加してアプリケーション実行
- config/environments/development.rbを編集
![0504](./images/0504.png)
![0505](./images/0505.png)

## S3を追加
![0506](./images/0506.png)

## アプリケーションのデータ保存先をS3に設定
- config/storage.ymlを編集
- config/environments/development.rbを編集
![0507](./images/0507.png)
![0508](./images/0508.png)

## 構成図
![0509](./images/0509.png)

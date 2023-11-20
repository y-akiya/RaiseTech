# 第13回課題

## CircleCI で Cloudformation、Ansible、ServerSpecを実行
### 概要
- Cloudformation：第10回で作成したテンプレートでスタックを作成
- Ansible：作成したEC2にサンプルアプリケーションをデプロイ
- ServerSpec：EC2に対してアプリケーション実行環境に関するテストを実施

### 実行結果（CircleCI）
- ワークフロー全体
![1301](./images/1301.png) 

- cfn-lint 
![1302](./images/1302.png) 

- execute-cloudformation
![1303](./images/1303.png) 

- execute-ansible
![1304](./images/1304.png) 
![1305](./images/1305.png) 

- execute-serverspec
![1306](./images/1306.png) 
![1307](./images/1307.png) 

### 実行結果（Cloudformation）
- スタックの作成
![1308](./images/1308.png) 

### 実行結果（サンプルアプリケーション）
- ALBのDNS名でアクセスして画像をアップロード
![1309](./images/1309.png) 

- アップロードした画像がS3に保存されていることを確認
![1310](./images/1310.png) 

### 各種設定内容
- [CircleCI](./CircleCI/config.yml) 

- [Cloudformation ](./cloudformation) 

- [Ansible ](./ansible) 

- [Servespec ](./servespec) 

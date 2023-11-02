# 第10回課題

## CloudFormationによるインフラ環境のコード化
### 概要
- 第５回で作成した構成を再現する
- テンプレートは以下の３層に分けて作成
  - Network Layer：VPC、サブネット、インターネットゲートウェイの作成
  - Security Layer：セキュリティグループ、IAMロールの作成
  - Application Layer：ALB、EC2、RDS、S3の作成

- 第５回で作成した構成図
![0509](./images/0509.png)

### 実行結果
- スタック（Network Layer）
![1001](./images/1001.png)

- スタック（Security Layer）
![1002](./images/1002.png)

- スタック（Application Layer）
![1003](./images/1003.png)

- VPC
![1004](./images/1004.png)

- Securitygroup(ALB)
![1005](./images/1005.png)

- Securitygroup(EC2)
![1006](./images/1006.png)

- Securitygroup(RDS)
![1007](./images/1007.png)

- ALB
![1008](./images/1008.png)

- EC2
![1009](./images/1009.png)

- RDS
![1010](./images/1010.png)

- S3
![1011](./images/1011.png)


### テンプレート
- Network Layer  
[cfn-Network-Layer.yml](./cloudformation/cfn-Network-Layer.yml)

- Security Layer  
[cfn-Security-Layer.yml](./cloudformation/cfn-Security-Layer.yml)

- Application Layer  
[cfn-Application-Layer.yml](./cloudformation/cfn-Application-Layer.yml)


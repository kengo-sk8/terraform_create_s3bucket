# 概要
Terraformを使用して、S3にバケットを作成する。また、Terraformの構築方法と操作方法を理解する

# コマンド一覧

## terraform init
Terraformの作業ディレクトリを初期化するために使用するコマンド
```sh
terraform init
```

## terraform plan
現状のソースコードを元に、実行計画を確認するコマンド
オプションに、`-auto-approve`を付与する事で、強制的に全ての確認を`Yes`で進める
```sh
terraform plan

#　-auto-approveを付与
terraform apply -auto-approve
```

## terraform apply
現状のソースコードに従って変更を適用するコマンド
```sh
terraform apply
```

## terraform destroy
terraformで管理しているリソースを削除するコマンド

```sh
terraform destroy

#　-auto-approveを付与
terraform destroy -auto-approve
```

## terraform show
`terraform.state`ファイルを元に、現在のリソースの状態を参照するコマンド
```sh
terraform show
```

## コマンドのオプションに関する関する参考資料
- [【Terraform】よく使用するコマンドについて書きます。](https://qiita.com/masato930/items/7db361ad875b778a456a)
- [Terraform のコマンド、オプションを出来るだけ使ってみる](https://qiita.com/takkii1010/items/082c0854fd41bc0b26c3)

# 構築詳細

## .terraform
プロジェクトのプロバイダーとモジュールを格納するディレクトリ
`terraform init`をターミナルで入力すると構築される

## providers.tf
実行するTerraformのバージョンを指定をしたり、プロバイダを指定するファイル

- [[公式]Providers](https://developer.hashicorp.com/terraform/language/providers)

## variables.tf
変数情報を記載するファイル

- [Terraformと変数（variable）のお話](https://capsulecloud.io/terraform-variable)
- [Terraform の Variables と Locals、Outputs](https://tellme.tokyo/post/2022/06/15/terraform-variables-is-api/)

## outputs.tf
出力を設定するファイル

## .terraform.lock.hcl
プロバイダバージョンを指定するファイル

## terraform.tfvars
環境変数を記載するファイル

- [Terraformでクレデンシャルを読み込む方法あれこれ](https://qiita.com/Hikosaburou/items/1d3765d85d5398e3763f)

## resource
`resource`は、"<リースの種類>" "<リソース名>" {・・・}の形式でリソースを定義します

- [Resource](https://tama-shira.github.io/note/terraform/terraform-03-resorce/)

# 参考資料
- [[公式]Terraform About the Docs](https://developer.hashicorp.com/terraform/docs)
- [[公式]hashicorp/terraform-provider-aws](https://registry.terraform.io/providers/hashicorp/aws/latest)
- [[公式]terraformでAWSの設定を行う為のドキュメント](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Terraformのバージョン制約の仕様と挙動を調べてみた](https://dev.classmethod.jp/articles/about-terraform-version-required-constraints/)
- [AWSでTerraformに入門](https://dev.classmethod.jp/articles/terraform-getting-started-with-aws/)
- [Terraform基礎知識](https://qiita.com/nkmk1215/items/380bc6eda76ce4de6744)
- [terraformでS3バケットを作成する。](https://tech.teshiblog.com/aws/terraform/terraform-create-simple-s3/)

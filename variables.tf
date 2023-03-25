# 変数の設定
variable "aws_access_key" {
    description = "AWSのアクセスキーを設定する"
    type        = string
}
variable "aws_secret_key" {
    description = "AWSのシークレットキーを設定する"
    type        = string
}
variable "region"{
    description = "リージョンを設定する"
    type        = string
}
variable "profile"{
    description = "profileを設定する"
    type        = string
}

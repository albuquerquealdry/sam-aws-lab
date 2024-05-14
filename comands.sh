aws s3 mb s3://teste-aws-serveless-model

aws cloudformation package --s3-bucket teste-aws-serveless-model --template-file template.yaml --output-template-file gen/template-generate.yaml

aws cloudformation deploy --template-file gen/template-generate.yaml --stack-name 
# Kitchen-Terraform test on an EC2 instance

This repository contains kitchen-terraform code that does a simple test on an AWS EC2 instance

## Prerequisites:
1. AWS account
2. SSH Keypair

## Usage

1. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)
2. [Install Chef/Kitchen](https://kitchen.ci/docs/getting-started/installing/)
3. Clone this repository and `cd` into it.
4. Run the following:

Automatic kitchen-terraform test:
```
export TF_VAR_aws_access_key=<YOUR AWS ACCESS KEY>
export TF_VAR_aws_secret_key=<YOUR AWS SECRET KEY>
$ brew install rbenv
$ rbenv local 2.3.1
$ gem install bundler
$ bundle install
$ bundle exec kitchen test
```

NOTE: You will need to modify the name of your SSH key used for AWS and the path to the private key 

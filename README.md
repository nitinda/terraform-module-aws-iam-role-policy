# _Terraform Module Name: terraform-module-iam-role-policy_


_Terraform Module for_ **_AWS IAM Role Policy_**


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

> **_This is a stable example. It should successfully build out of the box_**
>
> _This examples does is built on Construct Libraries marked "Stable" and does not have any infrastructure prerequisites to build._

---
<!--END STABILITY BANNER-->

## _General_

_This module may be used to create_ **_IAM Role Policy_** _resources in AWS cloud provider...._
---


## _Prerequisites_

_This module needs_ **_Terraform 0.12.19_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).


---

## _Features_

_Below we are able to check the resources that are being created as part of this module call:_

* **_IAM Role Policy_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "iam_role_policy" {
  source = "git::https://github.com/nitinda/terraform-module-aws-iam-role-policy.git?ref=terraform-12/master"

  providers = {
    aws = aws.services
  }

  ## IAM Role Policy
  name_prefix = "iam-role-policy-serice"
  policy      = var.iam_policy_document_json
  role        = var.iam_role_id
}
```
---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_name_** | _The name of the role policy. If omitted, Terraform will assign a random, unique name_ | _string_ | **_Optional_** | **_null_** |
| **_name\_prefix_** | _Creates a unique name beginning with the specified prefix. Conflicts with name_ | _string_ | **_Optional_** | **_null_** |
| **_policy_** | _The inline policy document. This is a JSON formatted string_ | _string_ | **_Required_** |
| **_role_** | _The IAM role to attach to the policy_ | _string_ | **_Required_** |




## Outputs

* **_id_**
* **_arn_**



### Usage
In order for the variables to be accessed on module level please use the syntax below:

```tf
module.<module_name>.<output_variable_name>
```

If an output variable needs to be exposed on root level in order to be accessed through terraform state file follow the steps below:

- Include the syntax above in the network layer output terraform file.
- Add the code snippet below to the variables/global_variables file.

```tf
data "terraform_remote_state" "<module_name>" {
  backend = "s3"

  config {
    bucket = <bucket_name> (i.e. "s3-webstack-terraform-state")
    key    = <state_file_relative_path> (i.e. "env:/${terraform.workspace}/4_Networking/terraform.tfstate")
    region = <bucket_region> (i.e. "eu-central-1")
  }
}
```

- The output variable is able to be accessed through terraform state file using the syntax below:

```tf
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```

## Authors
Module maintained by Module maintained by the - **_Nitin Das_**

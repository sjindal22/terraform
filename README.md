# Introduction

## How to install?

* The manual installation ensures the latest version is on the system.
Therefore, use this [link](https://www.terraform.io/downloads.html)
and copy the URL for your OS.

* Run `wget <link>`.
  * [For Mac OS] If you don't have wget and unzip, run `brew install wget`

* unzip <terraform.zip> file.

* Verify if terraform is installed correctly by running the terraform script as
`./terraform`. You should see an output showing related to tf commands.

* `echo $PATH` and choose the path you want terraform script to move.

* `mv terraform /usr/local/bin` (You can choose a different location too).

* To verify if terraform can run from any directory, in addition to the
installed one; run `cd /tmp; terraform` and you should see the same tf
help command output.

## Terraform commands

* `terraform init` - initializes the directory where you would want to run the
plan, in order to provision the resources. It would basically install all 
plugins correspodning to the provider, specified in the configuration file.

* `terraform plan` - Outputs the resources expected to be created as a part of
.tf file. It will also show related syntactic errors, if any.

* `terraform apply` - Once the user is satsified with the output of the plan, 
they can go ahead and enter 'yes' for terraform to interact with the provider
API and provision/modify/delete the resource.

* `terraform destroy -target aws_instance.<user_defined_resource_name>` is used
to deprovision the resource. If you execute `terraform destroy`, it will delete
everything from the configuration file, specified in the directory, from where
the command is being executed

* `terraform refresh` - Fetches the current state of the infrastructure. It can
be useful to get an overview of the current state, before you plan to make any
changes.

* `terraform show` - It outputs the content of terraform.tfstate file.

* ls .terraform/plugins` - It is a directory that contains currently installed
plugin.

## Terraform state file

* This file can be found in the directory, from where the tf plan is being 
executed. It contains all the recently provisioned, resource specific informat-
ion, which even plan doesn't show. Terraform uses it to find the delta between
what the current and desired state of a resource. It is usually most beneficial
to track any manual changes, that has been performed from the console.

## Gotchas

* Terraform version and plugin version are two separate entities. These are not
released in rhythm. Therefore, it is likely that the terraform version may not
be compatible with the installed plugin version.


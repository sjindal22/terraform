# Introduction

## How to install?

* The manual installation ensures the latest version is on the system.
Therefore, use this [link](https://www.terraform.io/downloads.html)
and copy the URL for your OS.

* Run `wget <link>`.
  * [For Mac OS] If you don't have wget and unzip, run `brew install wget`

* `unzip <terraform.zip>` file.

* Verify if terraform is installed correctly by running the terraform script as
`./terraform`. You should see an output showing related to tf commands.

* `echo $PATH` and choose the path you want terraform script to move.

* `mv terraform /usr/local/bin` (You can choose a different location too).

* To verify if terraform can run from any directory, in addition to the
installed one; run `cd /tmp; terraform` and you should see the same tf
help command output.

## Directory structure

### Plugins

* There are two types of providers, 
[Hashicorp Distributed](https://www.terraform.io/docs/providers/type/major-index.html) 
& [3rdparty](https://www.terraform.io/docs/providers/type/community-index.html).
The former refers to continual testing and intergration of providers by 
Hashicorp. And upon executing `terraform init`, the provider plugins would be 
automatically installed. However, this is not the case with the 3rdparty 
providers (aka Community providers) and requires manual downloading of the 
plugin.
  * `.terraform/plugins/` - is the directory for HC's distributed plugin.
  * `~/.terraform.d/plugins/` - is for the 3rdparty plugins. Make sure to create
    this directory if it does not exist already. And move the plugin file here.
    So that the terraform is able to initialize correctly when you execute, 
    `terraform init`.

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

plugin.

## Terraform state file

* This file can be found in the directory, from where the tf plan is being 
executed. It contains all the recently provisioned, resource specific 
information, which even plan doesn't show. Terraform uses it to find the delta 
between what the current and desired state of a resource. It is usually most 
beneficial to track any manual changes that has been performed via the console.

## Gotchas

* Terraform version and plugin version are two separate entities. These are not
released in rhythm. Therefore, it is likely that the terraform version may not
be compatible with the installed plugin version.


# Introduction

## How to install?

* The manual installation ensures the latest version. Therefore, use this 
[link](https://www.terraform.io/downloads.html) and copy the URL for your
OS.
* Run `wget <link>`.
  * [For Mac OS] If you don't have wget and unzip, run `brew install wget`
* unzip <terraform.zip> file.
* Verify if terraform is installed by running the terraform script as,
`./terraform`. You should see an output showing related to tf commands.
* echo $PATH and choose the path you want terraform script to move.
* `mv terraform /usr/local/bin` (You can choose a different location too).
* To verify if terraform can run from any directory, in addition to the
installed one; run `cd /tmp; terraform` and you should see the same tf
help command output.


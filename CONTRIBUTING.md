# Contributing to the Mattermost cookbook

## Quick-contribute

* Create an issue on the Github [issue page](https://github.com/ist-dsi/mattermost-cookbook/issues)
* Create a pull request from the ticket with your changes

We regularly review contributions and will get back to you if we have
any suggestions or concerns.

### Branches and Commits

You should submit your patch as a git branch named after the change.

It is a best practice to have your commit message have a _summary
line_, followed by an empty line and then a brief description of 
the commit. This also helps other contributors understand the 
purpose of changes to the code.

Remember that not all users use Chef in the same way or on the same
operating systems as you, so it is helpful to be clear about your use
case and change so they can understand it even when it doesn't apply
to them.

## Functional and Unit Tests

This cookbook is set up to run tests under
[Test Kitchen](http://kitchen.ci/). It uses inspec to run
integration tests after the node has been converged to verify that
the state of the node.

Test kitchen should run completely without exception using the default
[baseboxes provided by Chef](http://chef.github.io/bento/).
Because Test Kitchen creates VirtualBox machines and runs through
every configuration in the .kitchen.yml file, it may take some time for
these tests to complete.

If your changes are only for a specific recipe, run only its
configuration with Test Kitchen. If you are adding a new recipe, or
other functionality such as a LWRP or definition, please add
appropriate tests and ensure they run with Test Kitchen.

If any don't pass, investigate them before submitting your patch.

Any new feature should have unit tests included with the patch with
good code coverage to help protect it from future changes. Similarly,
patches that fix a bug or regression should have a _regression test_.
Simply put, this is a test that would fail without your patch but
passes with it. The goal is to ensure this bug doesn't regress in the
future. Consider a regular expression that doesn't match a certain
pattern that it should, so you provide a patch and a test to ensure
that the part of the code that uses this regular expression works as
expected. Later another contributor may modify this regular expression
in a way that breaks your use cases. The test you wrote will fail,
signalling to them to research your ticket and use case and accounting
for it.

## Cookbook Contribution Do's and Don't's

Please do include tests for your contribution.

Not all platforms that a cookbook supports may be supported by Test
Kitchen. Please provide evidence of testing your contribution if it
isn't trivial so we don't have to duplicate effort in testing. Chef
10.14+ "doc" formatted output is sufficient.

Please do indicate new platform (families) or platform versions in the
commit message, and update the relevant ticket.  If a contribution adds 
new platforms or platform versions, indicate such in the body of the commit message(s).

Please do use [foodcritic](http://www.foodcritic.io/) to
lint-check the cookbook. Except FC007, it should pass all correctness
rules. FC007 is okay as long as the dependent cookbooks are *required*
for the default behavior of the cookbook, such as to support an
uncommon platform, secondary recipe, etc.

Please do ensure that your changes do not break or modify behavior for
other platforms supported by the cookbook. For example if your changes
are for Debian, make sure that they do not break on CentOS.

Please do not modify the version number in the metadata.rb, the maintainer
will select the appropriate version based on the release cycle
information above.

Please do not update the CHANGELOG.md for a new version. Not all
changes to a cookbook may be merged and released in the same versions.
We will update the CHANGELOG.md when releasing a new version of
the cookbook.

## Thanks

This document is heavily based on [Apache Cookbook](https://supermarket.chef.io/cookbooks/apache2) contributing guide.
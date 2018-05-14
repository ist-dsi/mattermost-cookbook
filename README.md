# Mattermost Cookbook

[![Build Status](https://travis-ci.org/ist-dsi/mattermost-cookbook.svg?branch=master)](https://travis-ci.org/ist-dsi/mattermost-cookbook) [![Cookbook Version](https://img.shields.io/cookbook/v/mattermost-cookbook.svg)](https://supermarket.chef.io/cookbooks/mattermost-cookbook)

## Overview

This cookbook installs and configures Mattermost, the opensource Slack alternative.

* http://www.mattermost.org/

### Supported Mattermost Versions

| Mattermost Version | Cookbook Version |
|:------------------:|:----------------:|
| 4.9.2              | v1.6.9           |
| 4.8.1              | v1.6.7           |
| 4.7.3              | v1.6.5           |
| 4.6.0              | v1.6.3           |
| 4.5.0              | v1.6.2           |
| 4.4.5              | v1.6.1           |
| 4.3.2              | v1.5.3           |
| 4.2.0              | v1.4.0           |
| 4.1.0              | v1.3.0           |
| 4.0.4              | v1.2.0           |
| 3.10.3             | v1.1.0           |
| 3.9.23             | v1.0.0           |

## Requirements

### Platforms: 

The following platforms and versions are tested and supported using [test-kitchen](http://kitchen.ci/)  

* Ubuntu 16 LTS
* Debian 9
* CentOS 7 

### Chef

* Chef 12.19+

### Cookbooks

* [ark](https://github.com/chef-cookbooks/ark)

## Usage

Using this cookbook is relatively straightforward. It is recommended to create a project or organization specific [wrapper cookbook](https://www.chef.io/blog/2013/12/03/doing-wrapper-cookbooks-right/) and add the desired recipes (for example, to setup a database) to the run list of a node.

### Attributes

All settings are the [default settings](https://github.com/mattermost/mattermost-server/blob/v4.9.0/config/default.json) that come from [Mattermost repository](https://github.com/mattermost/mattermost-server/). Make sure to review them all and change what's necessary.

## License and Authors

* Author:: David Duarte <david.duarte@tecnico.ulisboa.pt>
* Author:: Kyle Corupe <kyle.corupe@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


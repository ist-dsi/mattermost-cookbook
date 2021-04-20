# Mattermost Cookbook

[![Build Status](https://travis-ci.org/ist-dsi/mattermost-cookbook.svg?branch=master)](https://travis-ci.org/ist-dsi/mattermost-cookbook) [![Cookbook Version](https://img.shields.io/cookbook/v/mattermost-cookbook.svg)](https://supermarket.chef.io/cookbooks/mattermost-cookbook)

## Overview

This cookbook installs and configures [Mattermost, the opensource Slack alternative](http://www.mattermost.org/).

### Supported Mattermost Versions

| Mattermost Version | Cookbook Version |
|:------------------:|:----------------:|
| 5.18.2             | v5.18.2          |
| 5.17.1             | v5.17.1          |
| 5.16.3             | v5.16.3          |
| 5.15.1             | v5.15.1          |
| 5.14.3             | v5.14.3          |
| 5.13.3             | v5.13.3          |
| 5.12.2             | v5.12.2          |
| 5.12.0             | v5.12.0          |
| 5.11.1             | v5.11.1          |
| 5.10.0             | v5.10.0          |
| 5.9.0              | v5.9.0           |
| 5.8.0              | v5.8.0           |
| 5.7.2              | v5.7.2           |
| 5.7.0              | v5.7.0           |
| 5.6.3              | v5.6.3           |
| 5.5.1              | v5.5.1           |
| 5.5.0              | v5.5.0           |
| 5.4.0              | v5.0.1           |
| 5.4.0              | v5.0.0           |
| 5.3.1              | v4.0.1           |
| 5.2.1              | v3.0.0           |
| 5.1.1              | v2.1.1           |
| 5.0.1              | v2.0.0           |
| 4.10.1             | v1.6.10          |

For older versions see this cookbook history at [Supermarket](https://supermarket.chef.io/cookbooks/mattermost-cookbook).

## Requirements

### Platforms

The following platforms and versions are tested and supported using [test-kitchen](http://kitchen.ci/)  

* Ubuntu 18 LTS
* Debian 9
* Debian 10
* CentOS 7

### Chef

* Chef 12.19+

### Dependencies

* [tar](https://supermarket.chef.io/cookbooks/tar)

## Usage

Using this cookbook is relatively straightforward. It is recommended to create a project or organization specific [wrapper cookbook](https://www.chef.io/blog/2013/12/03/doing-wrapper-cookbooks-right/) and add the desired recipes (for example, to setup a database) to the run list of a node.

### Attributes

All settings are the [default settings](https://docs.mattermost.com/administration/config-settings.html). Make sure to review them all and change what's necessary.

## License and Authors

* Author:: Simão Martins    <simao.martins@tecnico.ulisboa.pt>
* Author:: Simão Silva      <simao.silva@tecnico.ulisboa.pt>
* Author:: David Duarte     <david.duarte@tecnico.ulisboa.pt>
* Author:: Kyle Corupe      <kyle.corupe@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

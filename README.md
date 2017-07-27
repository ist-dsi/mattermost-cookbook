# mattermost

This cookbook installs and configures Mattermost, the opensource Slack alternative.

* http://www.mattermost.org/

## Platforms:  

The following platforms and versions are tested and supported using [test-kitchen](http://kitchen.ci/)  

* Ubuntu 16 LTS
* Debian 9
* CentOS 7 

## Usage

Using this cookbook is relatively straightforward. It is recommended to create a project or organization specific [wrapper cookbook](https://www.chef.io/blog/2013/12/03/doing-wrapper-cookbooks-right/) and add the desired recipes to the run list of a node.

## Attributes

All settings are the default settings that come from [Mattermost](https://github.com/mattermost/platform/blob/v3.9.2/config/config.json) repository. Make sure to review all settings and change what's necessary.

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


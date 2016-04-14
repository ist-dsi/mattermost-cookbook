# mattermost

This cookbook installs and configures Mattermost, the opensource Slack alternative.

* http://www.mattermost.org/


## Platforms:  

The following platforms and versions are tested and supported using [test-kitchen](http://kitchen.ci/)  

* Ubuntu 14.04 

Usage
=====

Using this cookbook is relatively straightforward. It is recommended to create a project or organization specific [wrapper cookbook](https://www.chef.io/blog/2013/12/03/doing-wrapper-cookbooks-right/) and add the desired recipes to the run list of a node. Adjust any attributes (listed below) as desired.

Attributes
==========

All settings are either sane defaults or default settings that come with a fresh installation. Make sure to review all settings and change whats nessisary.

### Server Settings
* `node['mattermost']['package']['url'] = "https://github.com/mattermost/platform/releases/download/v2.0.0/mattermost.tar.gz"`
* `node['mattermost']['package']['checksum'] = "005687c6a8128e1e40d01933f09d7da1a1b70b149a6bef96d923166bc1e7ce8f"`
* `node['mattermost']['config']['install_path'] = "/opt"` # installs to /opt/mattermost
* `node['mattermost']['config']['user'] = "mattermost"`
* `node['mattermost']['config']['group'] = "mattermost"`
* `node['mattermost']['config']['data_dir'] = "/mattermost/data"`
* `node['mattermost']['config']['server_name'] = "localhost"` 

### Database Settings
* `node['mattermost']['database']['remote'] = false` # If set to true, a local mysql server is not installed
* `node['mattermost']['database']['mysql_root'] = 'password'`
* `node['mattermost']['database']['hostname'] = '127.0.0.1'`
* `node['mattermost']['database']['port'] = 3306`
* `node['mattermost']['database']['database_name'] = 'mattermost'`
* `node['mattermost']['database']['username'] = 'mattermost'`
* `node['mattermost']['database']['password'] = 'password'`

### Service Settings
* `node['mattermost']['app']['ListenAddress'] = ":8065"`
* `node['mattermost']['app']['MaximumLoginAttempts'] = 10`
* `node['mattermost']['app']['SegmentDeveloperKey'] = ""`
* `node['mattermost']['app']['GoogleDeveloperKey'] = ""`
* `node['mattermost']['app']['EnableOAuthServiceProvider'] = false`
* `node['mattermost']['app']['EnableIncomingWebhooks'] = false`
* `node['mattermost']['app']['EnableOutgoingWebhooks'] = false`
* `node['mattermost']['app']['EnableCommands'] = false`
* `node['mattermost']['app']['EnableOnlyAdminIntegrations'] = true`
* `node['mattermost']['app']['EnablePostUsernameOverride'] = false`
* `node['mattermost']['app']['EnablePostIconOverride'] = false`
* `node['mattermost']['app']['EnableTesting'] = false`
* `node['mattermost']['app']['EnableDeveloper'] = false`
* `node['mattermost']['app']['EnableSecurityFixAlert'] = true`
* `node['mattermost']['app']['EnableInsecureOutgoingConnections'] = false`
* `node['mattermost']['app']['SessionLengthWebInDays'] = 30`
* `node['mattermost']['app']['SessionLengthMobileInDays'] = 30`
* `node['mattermost']['app']['SessionLengthSSOInDays'] = 30`
* `node['mattermost']['app']['SessionCacheInMinutes'] = 10`

### TeamSettings
* `node['mattermost']['app']['SiteName'] = "Mattermost"`
* `node['mattermost']['app']['MaxUsersPerTeam'] = 50`
* `node['mattermost']['app']['EnableTeamCreation'] = true`
* `node['mattermost']['app']['EnableUserCreation'] = true`
* `node['mattermost']['app']['RestrictCreationToDomains'] = ""`
* `node['mattermost']['app']['RestrictTeamNames'] = true`
* `node['mattermost']['app']['EnableTeamListing'] = false`

### SQL Settings
* `node['mattermost']['app']['DriverName'] = "mysql"`
* `node['mattermost']['app']['DataSourceReplicas'] = "[]"`
* `node['mattermost']['app']['MaxIdleConns'] = 10`
* `node['mattermost']['app']['MaxOpenConns'] = 10`
* `node['mattermost']['app']['Trace'] = false`
* `node['mattermost']['app']['AtRestEncryptKey'] = "7rAh6iwQCkV4cA1Gsg3fgGOXJAQ43QVg"`

### LogSettings
* `node['mattermost']['app']['EnableConsole'] = true`
* `node['mattermost']['app']['ConsoleLevel'] = "DEBUG"`
* `node['mattermost']['app']['EnableFile'] = true`
* `node['mattermost']['app']['FileLevel'] = "INFO"`
* `node['mattermost']['app']['FileFormat'] = ""`
* `node['mattermost']['app']['FileLocation'] = ""`

### FileSettings
* `node['mattermost']['app']['File_Driver_Name'] = "local"`
* `node['mattermost']['app']['Directory'] = "./data/"`
* `node['mattermost']['app']['EnablePublicLink'] = true`
* `node['mattermost']['app']['PublicLinkSalt'] = "A705AklYF8MFDOfcwh3I488G8vtLlVip"`
* `node['mattermost']['app']['ThumbnailWidth'] = 120`
* `node['mattermost']['app']['ThumbnailHeight'] = 100`
* `node['mattermost']['app']['PreviewWidth'] = 1024`
* `node['mattermost']['app']['PreviewHeight'] = 0`
* `node['mattermost']['app']['ProfileWidth'] = 128`
* `node['mattermost']['app']['ProfileHeight'] = 128`
* `node['mattermost']['app']['InitialFont'] = "luximbi.ttf"`
* `node['mattermost']['app']['AmazonS3AccessKeyId'] = ""`
* `node['mattermost']['app']['AmazonS3SecretAccessKey'] = ""`
* `node['mattermost']['app']['AmazonS3Bucket'] = ""`
* `node['mattermost']['app']['AmazonS3Region'] = ""`
* `node['mattermost']['app']['AmazonS3Endpoint'] = ""`
* `node['mattermost']['app']['AmazonS3BucketEndpoint'] = ""`
* `node['mattermost']['app']['AmazonS3LocationConstraint'] = false`
* `node['mattermost']['app']['AmazonS3LowercaseBucket'] = false`

### EmailSettings
* `node['mattermost']['app']['EnableSignUpWithEmail'] = true`
* `node['mattermost']['app']['EnableSignInWithEmail'] = true`
* `node['mattermost']['app']['EnableSignInWithUsername'] = false`
* `node['mattermost']['app']['SendEmailNotifications'] = false`
* `node['mattermost']['app']['RequireEmailVerification'] = false`
* `node['mattermost']['app']['FeedbackName'] = ""`
* `node['mattermost']['app']['FeedbackEmail'] = ""`
* `node['mattermost']['app']['SMTPUsername'] = ""`
* `node['mattermost']['app']['SMTPPassword'] = ""`
* `node['mattermost']['app']['SMTPServer'] = ""`
* `node['mattermost']['app']['SMTPPort'] = ""`
* `node['mattermost']['app']['ConnectionSecurity'] = ""`
* `node['mattermost']['app']['InviteSalt'] = "bjlSR4QqkXFBr7TP4oDzlfZmcNuH9YoS"`
* `node['mattermost']['app']['PasswordResetSalt'] = "vZ4DcKyVVRlKHHJpexcuXzojkE5PZ5eL"`
* `node['mattermost']['app']['SendPushNotifications'] = false`
* `node['mattermost']['app']['PushNotificationServer'] = ""`

### RateLimitSettings
* `node['mattermost']['app']['EnableRateLimiter'] = true`
* `node['mattermost']['app']['PerSec'] = 10`
* `node['mattermost']['app']['MemoryStoreSize'] = 10000`
* `node['mattermost']['app']['VaryByRemoteAddr'] = true`
* `node['mattermost']['app']['VaryByHeader'] = ""`

### PrivacySettings
* `node['mattermost']['app']['ShowEmailAddress'] = true`
* `node['mattermost']['app']['ShowFullName'] = true`

### SupportSettings
* `node['mattermost']['app']['TermsOfServiceLink'] = "/static/help/terms.html"`
* `node['mattermost']['app']['PrivacyPolicyLink'] = "/static/help/privacy.html"`
* `node['mattermost']['app']['AboutLink'] = "/static/help/about.html"`
* `node['mattermost']['app']['HelpLink'] = "/static/help/help.html"`
* `node['mattermost']['app']['ReportAProblemLink'] = "/static/help/report_problem.html"`
* `node['mattermost']['app']['SupportEmail'] = "feedback@mattermost.com"`

### GitLabSettings
* `node['mattermost']['app']['Enable'] = false`
* `node['mattermost']['app']['Secret'] = ""`
* `node['mattermost']['app']['Id'] = ""`
* `node['mattermost']['app']['Scope'] = ""`
* `node['mattermost']['app']['AuthEndpoint'] = ""`
* `node['mattermost']['app']['TokenEndpoint'] = ""`
* `node['mattermost']['app']['UserApiEndpoint'] = ""`

License and Authors
===================

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


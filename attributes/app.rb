# Service Settings
default['mattermost']['app']['ListenAddress'] = ":8065"
default['mattermost']['app']['MaximumLoginAttempts'] = 10
default['mattermost']['app']['SegmentDeveloperKey'] = ""
default['mattermost']['app']['GoogleDeveloperKey'] = ""
default['mattermost']['app']['EnableOAuthServiceProvider'] = false
default['mattermost']['app']['EnableIncomingWebhooks'] = false
default['mattermost']['app']['EnableOutgoingWebhooks'] = false
default['mattermost']['app']['EnableCommands'] = false
default['mattermost']['app']['EnableOnlyAdminIntegrations'] = true
default['mattermost']['app']['EnablePostUsernameOverride'] = false
default['mattermost']['app']['EnablePostIconOverride'] = false
default['mattermost']['app']['EnableTesting'] = false
default['mattermost']['app']['EnableDeveloper'] = false
default['mattermost']['app']['EnableSecurityFixAlert'] = true
default['mattermost']['app']['EnableInsecureOutgoingConnections'] = false
default['mattermost']['app']['SessionLengthWebInDays'] = 30
default['mattermost']['app']['SessionLengthMobileInDays'] = 30
default['mattermost']['app']['SessionLengthSSOInDays'] = 30
default['mattermost']['app']['SessionCacheInMinutes'] = 10

# TeamSettings
default['mattermost']['app']['SiteName'] = "Mattermost"
default['mattermost']['app']['MaxUsersPerTeam'] = 50
default['mattermost']['app']['EnableTeamCreation'] = true
default['mattermost']['app']['EnableUserCreation'] = true
default['mattermost']['app']['RestrictCreationToDomains'] = ""
default['mattermost']['app']['RestrictTeamNames'] = true
default['mattermost']['app']['EnableTeamListing'] = false

# SQL Settings
default['mattermost']['app']['DriverName'] = "mysql"
default['mattermost']['app']['DataSourceReplicas'] = "[]"
default['mattermost']['app']['MaxIdleConns'] = 10
default['mattermost']['app']['MaxOpenConns'] = 10
default['mattermost']['app']['Trace'] = false
default['mattermost']['app']['AtRestEncryptKey'] = "7rAh6iwQCkV4cA1Gsg3fgGOXJAQ43QVg"

# LogSettings
default['mattermost']['app']['EnableConsole'] = true
default['mattermost']['app']['ConsoleLevel'] = "DEBUG"
default['mattermost']['app']['EnableFile'] = true
default['mattermost']['app']['FileLevel'] = "INFO"
default['mattermost']['app']['FileFormat'] = ""
default['mattermost']['app']['FileLocation'] = ""

# FileSettings
default['mattermost']['app']['File_Driver_Name'] = "local"
default['mattermost']['app']['Directory'] = "./data/"
default['mattermost']['app']['EnablePublicLink'] = true
default['mattermost']['app']['PublicLinkSalt'] = "A705AklYF8MFDOfcwh3I488G8vtLlVip"
default['mattermost']['app']['ThumbnailWidth'] = 120
default['mattermost']['app']['ThumbnailHeight'] = 100
default['mattermost']['app']['PreviewWidth'] = 1024
default['mattermost']['app']['PreviewHeight'] = 0
default['mattermost']['app']['ProfileWidth'] = 128
default['mattermost']['app']['ProfileHeight'] = 128
default['mattermost']['app']['InitialFont'] = "luximbi.ttf"
default['mattermost']['app']['AmazonS3AccessKeyId'] = ""
default['mattermost']['app']['AmazonS3SecretAccessKey'] = ""
default['mattermost']['app']['AmazonS3Bucket'] = ""
default['mattermost']['app']['AmazonS3Region'] = ""
default['mattermost']['app']['AmazonS3Endpoint'] = ""
default['mattermost']['app']['AmazonS3BucketEndpoint'] = ""
default['mattermost']['app']['AmazonS3LocationConstraint'] = false
default['mattermost']['app']['AmazonS3LowercaseBucket'] = false

#EmailSettings
default['mattermost']['app']['EnableSignUpWithEmail'] = true
default['mattermost']['app']['EnableSignInWithEmail'] = true
default['mattermost']['app']['EnableSignInWithUsername'] = false
default['mattermost']['app']['SendEmailNotifications'] = false
default['mattermost']['app']['RequireEmailVerification'] = false
default['mattermost']['app']['FeedbackName'] = ""
default['mattermost']['app']['FeedbackEmail'] = ""
default['mattermost']['app']['SMTPUsername'] = ""
default['mattermost']['app']['SMTPPassword'] = ""
default['mattermost']['app']['SMTPServer'] = ""
default['mattermost']['app']['SMTPPort'] = ""
default['mattermost']['app']['ConnectionSecurity'] = ""
default['mattermost']['app']['InviteSalt'] = "bjlSR4QqkXFBr7TP4oDzlfZmcNuH9YoS"
default['mattermost']['app']['PasswordResetSalt'] = "vZ4DcKyVVRlKHHJpexcuXzojkE5PZ5eL"
default['mattermost']['app']['SendPushNotifications'] = false
default['mattermost']['app']['PushNotificationServer'] = ""

# RateLimitSettings
default['mattermost']['app']['EnableRateLimiter'] = true
default['mattermost']['app']['PerSec'] = 10
default['mattermost']['app']['MemoryStoreSize'] = 10000
default['mattermost']['app']['VaryByRemoteAddr'] = true
default['mattermost']['app']['VaryByHeader'] = ""

# PrivacySettings
default['mattermost']['app']['ShowEmailAddress'] = true
default['mattermost']['app']['ShowFullName'] = true

#SupportSettings
default['mattermost']['app']['TermsOfServiceLink'] = "/static/help/terms.html"
default['mattermost']['app']['PrivacyPolicyLink'] = "/static/help/privacy.html"
default['mattermost']['app']['AboutLink'] = "/static/help/about.html"
default['mattermost']['app']['HelpLink'] = "/static/help/help.html"
default['mattermost']['app']['ReportAProblemLink'] = "/static/help/report_problem.html"
default['mattermost']['app']['SupportEmail'] = "feedback@mattermost.com"

# GitLabSettings
default['mattermost']['app']['Enable'] = false
default['mattermost']['app']['Secret'] = ""
default['mattermost']['app']['Id'] = ""
default['mattermost']['app']['Scope'] = ""
default['mattermost']['app']['AuthEndpoint'] = ""
default['mattermost']['app']['TokenEndpoint'] = ""
default['mattermost']['app']['UserApiEndpoint'] = ""

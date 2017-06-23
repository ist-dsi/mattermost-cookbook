
# Service Settings
default['mattermost']['app']['ServiceSettings']['SiteURL'] = ""
default['mattermost']['app']['ServiceSettings']['LicenseFileLocation'] = ""
default['mattermost']['app']['ServiceSettings']['ListenAddress'] = "[::]:8065"
default['mattermost']['app']['ServiceSettings']['ConnectionSecurity'] = ""
default['mattermost']['app']['ServiceSettings']['TLSCertFile'] = ""
default['mattermost']['app']['ServiceSettings']['TLSKeyFile'] = ""
default['mattermost']['app']['ServiceSettings']['UseLetsEncrypt'] = false
default['mattermost']['app']['ServiceSettings']['LetsEncryptCertificateCacheFile'] = "./config/letsencrypt.cache"
default['mattermost']['app']['ServiceSettings']['Forward80To443'] = false
default['mattermost']['app']['ServiceSettings']['ReadTimeout'] = 300
default['mattermost']['app']['ServiceSettings']['WriteTimeout'] = 300
default['mattermost']['app']['ServiceSettings']['MaximumLoginAttempts'] = 16
default['mattermost']['app']['ServiceSettings']['GoogleDeveloperKey'] = ""
default['mattermost']['app']['ServiceSettings']['EnableOAuthServiceProvider'] = false
default['mattermost']['app']['ServiceSettings']['EnableIncomingWebhooks'] = true
default['mattermost']['app']['ServiceSettings']['EnableOutgoingWebhooks'] = true
default['mattermost']['app']['ServiceSettings']['EnableCommands'] = true
default['mattermost']['app']['ServiceSettings']['EnableOnlyAdminIntegrations'] = true
default['mattermost']['app']['ServiceSettings']['EnablePostUsernameOverride'] = true
default['mattermost']['app']['ServiceSettings']['EnablePostIconOverride'] = true
default['mattermost']['app']['ServiceSettings']['EnableLinkPreviews'] = true
default['mattermost']['app']['ServiceSettings']['EnableTesting'] = false
default['mattermost']['app']['ServiceSettings']['EnableDeveloper'] = false
default['mattermost']['app']['ServiceSettings']['EnableSecurityFixAlert'] = true
default['mattermost']['app']['ServiceSettings']['EnableInsecureOutgoingConnections'] = false
default['mattermost']['app']['ServiceSettings']['EnableMultifactorAuthentication'] = false
default['mattermost']['app']['ServiceSettings']['EnforceMultifactorAuthentication'] = false
default['mattermost']['app']['ServiceSettings']['AllowCorsFrom'] = "*"
default['mattermost']['app']['ServiceSettings']['SessionLengthWebInDays'] = 30
default['mattermost']['app']['ServiceSettings']['SessionLengthMobileInDays'] = 1800
default['mattermost']['app']['ServiceSettings']['SessionLengthSSOInDays'] = 30
default['mattermost']['app']['ServiceSettings']['SessionCacheInMinutes'] = 10
default['mattermost']['app']['ServiceSettings']['WebsocketSecurePort'] = 443
default['mattermost']['app']['ServiceSettings']['WebsocketPort'] = 80
default['mattermost']['app']['ServiceSettings']['EnableCustomEmoji'] = true
default['mattermost']['app']['ServiceSettings']['RestrictCustomEmojiCreation'] = "all"
default['mattermost']['app']['ServiceSettings']['RestrictPostDelete'] = "all"
default['mattermost']['app']['ServiceSettings']['AllowEditPost'] = "always"
default['mattermost']['app']['ServiceSettings']['PostEditTimeLimit'] = 300
default['mattermost']['app']['ServiceSettings']['TimeBetweenUserTypingUpdatesMilliseconds'] = 5000
default['mattermost']['app']['ServiceSettings']['EnablePostSearch'] = true
default['mattermost']['app']['ServiceSettings']['EnableUserTypingMessages'] = true
default['mattermost']['app']['ServiceSettings']['EnableUserStatuses'] = true
default['mattermost']['app']['ServiceSettings']['ClusterLogTimeoutMilliseconds'] = 2000
default['mattermost']['app']['ServiceSettings']['AllowFrameFrom'] = ""

# Team Settings
default['mattermost']['app']['TeamSettings']['SiteName'] = 'Mattermost'
default['mattermost']['app']['TeamSettings']['MaxUsersPerTeam'] = 2147483647
default['mattermost']['app']['TeamSettings']['EnableTeamCreation'] = false
default['mattermost']['app']['TeamSettings']['EnableUserCreation'] = false
default['mattermost']['app']['TeamSettings']['RestrictCreationToDomains'] = ""
default['mattermost']['app']['TeamSettings']['EnableCustomBrand'] = false
default['mattermost']['app']['TeamSettings']['CustomBrandText'] = ""
default['mattermost']['app']['TeamSettings']['CustomDescriptionText'] = ""
default['mattermost']['app']['TeamSettings']['RestrictDirectMessage'] = "team"
default['mattermost']['app']['TeamSettings']['RestrictTeamInvite'] = "team_admin"
default['mattermost']['app']['TeamSettings']['RestrictPublicChannelManagement'] = "team_admin"
default['mattermost']['app']['TeamSettings']['RestrictPrivateChannelManagement'] = "team_admin"
default['mattermost']['app']['TeamSettings']['RestrictPublicChannelCreation'] = "team_admin"
default['mattermost']['app']['TeamSettings']['RestrictPrivateChannelCreation'] = "team_admin"
default['mattermost']['app']['TeamSettings']['RestrictPublicChannelDeletion'] = "team_admin"
default['mattermost']['app']['TeamSettings']['RestrictPrivateChannelDeletion'] = "team_admin"
default['mattermost']['app']['TeamSettings']['RestrictPrivateChannelManageMembers'] = "team_admin"
default['mattermost']['app']['TeamSettings']['UserStatusAwayTimeout'] = 300
default['mattermost']['app']['TeamSettings']['MaxNotificationsPerChannel'] = 1000

# Sql Settings
default['mattermost']['app']['SqlSettings']['DriverName'] = "mysql"
default['mattermost']['app']['SqlSettings']['DataSourceReplicas'] = []
default['mattermost']['app']['SqlSettings']['DataSourceSearchReplicas'] = nil
default['mattermost']['app']['SqlSettings']['MaxIdleConns'] = 20
default['mattermost']['app']['SqlSettings']['MaxOpenConns'] = 300
default['mattermost']['app']['SqlSettings']['Trace'] = false
default['mattermost']['app']['SqlSettings']['AtRestEncryptKey'] = "" # SET THIS!

# Log Settings
default['mattermost']['app']['LogSettings']['EnableConsole'] = false
default['mattermost']['app']['LogSettings']['ConsoleLevel'] = "INFO"
default['mattermost']['app']['LogSettings']['EnableFile'] = true
default['mattermost']['app']['LogSettings']['FileLevel'] = "INFO"
default['mattermost']['app']['LogSettings']['FileFormat'] = ""
default['mattermost']['app']['LogSettings']['FileLocation'] = ""
default['mattermost']['app']['LogSettings']['EnableWebhookDebugging'] = true
default['mattermost']['app']['LogSettings']['EnableDiagnostics'] = true

# Password Settings
default['mattermost']['app']['PasswordSettings']['MinimumLength'] = 5
default['mattermost']['app']['PasswordSettings']['Lowercase'] = false
default['mattermost']['app']['PasswordSettings']['Number'] = false
default['mattermost']['app']['PasswordSettings']['Uppercase'] = false
default['mattermost']['app']['PasswordSettings']['Symbol'] = false

# File Settings
default['mattermost']['app']['FileSettings']['EnableFileAttachments'] = true
default['mattermost']['app']['FileSettings']['MaxFileSize'] = 52428800
default['mattermost']['app']['FileSettings']['DriverName'] = "local"
default['mattermost']['app']['FileSettings']['Directory'] = "./data/"
default['mattermost']['app']['FileSettings']['EnablePublicLink'] = false
default['mattermost']['app']['FileSettings']['PublicLinkSalt'] = "" # SET THIS!
default['mattermost']['app']['FileSettings']['ThumbnailWidth'] = 120
default['mattermost']['app']['FileSettings']['ThumbnailHeight'] = 100
default['mattermost']['app']['FileSettings']['PreviewWidth'] = 1024
default['mattermost']['app']['FileSettings']['PreviewHeight'] = 0
default['mattermost']['app']['FileSettings']['ProfileWidth'] = 128
default['mattermost']['app']['FileSettings']['ProfileHeight'] = 128
default['mattermost']['app']['FileSettings']['InitialFont'] = "luximbi.ttf"
default['mattermost']['app']['FileSettings']['AmazonS3AccessKeyId'] = ""
default['mattermost']['app']['FileSettings']['AmazonS3SecretAccessKey'] = ""
default['mattermost']['app']['FileSettings']['AmazonS3Bucket'] = ""
default['mattermost']['app']['FileSettings']['AmazonS3Region'] = "us-east-1"
default['mattermost']['app']['FileSettings']['AmazonS3Endpoint'] = "s3.amazonaws.com"
default['mattermost']['app']['FileSettings']['AmazonS3SSL'] = true

# Email Settings
default['mattermost']['app']['EmailSettings']['EnableSignUpWithEmail'] = true
default['mattermost']['app']['EmailSettings']['EnableSignInWithEmail'] = true
default['mattermost']['app']['EmailSettings']['EnableSignInWithUsername'] = true
default['mattermost']['app']['EmailSettings']['SendEmailNotifications'] = true
default['mattermost']['app']['EmailSettings']['RequireEmailVerification'] = false
default['mattermost']['app']['EmailSettings']['FeedbackName'] = ""
default['mattermost']['app']['EmailSettings']['FeedbackEmail'] = ""
default['mattermost']['app']['EmailSettings']['FeedbackOrganization'] = ""
default['mattermost']['app']['EmailSettings']['SMTPUsername'] = ""
default['mattermost']['app']['EmailSettings']['SMTPPassword'] = ""
default['mattermost']['app']['EmailSettings']['SMTPServer'] = ""
default['mattermost']['app']['EmailSettings']['SMTPPort'] = ""
default['mattermost']['app']['EmailSettings']['ConnectionSecurity'] = ""
default['mattermost']['app']['EmailSettings']['InviteSalt'] = ""  # SET THIS!
default['mattermost']['app']['EmailSettings']['PasswordResetSalt'] = "" # SET THIS!
default['mattermost']['app']['EmailSettings']['SendPushNotifications'] = true
default['mattermost']['app']['EmailSettings']['PushNotificationServer'] = "http://push-test.mattermost.com"
default['mattermost']['app']['EmailSettings']['PushNotificationContents'] = "generic"
default['mattermost']['app']['EmailSettings']['EnableEmailBatching'] = true
default['mattermost']['app']['EmailSettings']['EmailBatchingBufferSize'] = 256
default['mattermost']['app']['EmailSettings']['EmailBatchingInterval'] = 30
default['mattermost']['app']['EmailSettings']['SkipServerCertificateVerification'] = false

# Rate Limit Settings
default['mattermost']['app']['RateLimitSettings']['Enable'] = false
default['mattermost']['app']['RateLimitSettings']['PerSec'] = 10
default['mattermost']['app']['RateLimitSettings']['MaxBurst'] = 100
default['mattermost']['app']['RateLimitSettings']['MemoryStoreSize'] = 1000
default['mattermost']['app']['RateLimitSettings']['VaryByRemoteAddr'] = true
default['mattermost']['app']['RateLimitSettings']['VaryByHeader'] = ""

# Privacy Settings
default['mattermost']['app']['PrivacySettings']['ShowEmailAddress'] = false
default['mattermost']['app']['PrivacySettings']['ShowFullName'] = true

# Support Settings
default['mattermost']['app']['SupportSettings']['TermsOfServiceLink'] = "https://about.mattermost.com/default-terms/"
default['mattermost']['app']['SupportSettings']['PrivacyPolicyLink'] = "https://about.mattermost.com/default-privacy-policy/"
default['mattermost']['app']['SupportSettings']['AboutLink'] = "https://about.mattermost.com/default-about/"
default['mattermost']['app']['SupportSettings']['HelpLink'] = "https://about.mattermost.com/default-help/"
default['mattermost']['app']['SupportSettings']['ReportAProblemLink'] = "https://about.mattermost.com/default-report-a-problem/"
default['mattermost']['app']['SupportSettings']['SupportEmail'] = "feedback@mattermost.com"

# GitLab Settings
default['mattermost']['app']['GitLabSettings']['Enable'] = false
default['mattermost']['app']['GitLabSettings']['Secret'] = ""
default['mattermost']['app']['GitLabSettings']['Id'] = ""
default['mattermost']['app']['GitLabSettings']['Scope'] = ""
default['mattermost']['app']['GitLabSettings']['AuthEndpoint'] = ""
default['mattermost']['app']['GitLabSettings']['TokenEndpoint'] = ""
default['mattermost']['app']['GitLabSettings']['UserApiEndpoint'] = ""

# Google Settings
default['mattermost']['app']['GoogleSettings']['Enable'] = false
default['mattermost']['app']['GoogleSettings']['Secret'] = ""
default['mattermost']['app']['GoogleSettings']['Id'] = ""
default['mattermost']['app']['GoogleSettings']['Scope'] = "profile email"
default['mattermost']['app']['GoogleSettings']['AuthEndpoint'] = "https://accounts.google.com/o/oauth2/v2/auth"
default['mattermost']['app']['GoogleSettings']['TokenEndpoint'] = "https://www.googleapis.com/oauth2/v4/token"
default['mattermost']['app']['GoogleSettings']['UserApiEndpoint'] = "https://www.googleapis.com/plus/v1/people/me"

# Office 365 Settings
default['mattermost']['app']['Office365Settings']['Enable'] = false
default['mattermost']['app']['Office365Settings']['Secret'] = ""
default['mattermost']['app']['Office365Settings']['Id'] = ""
default['mattermost']['app']['Office365Settings']['Scope'] = "profile email"
default['mattermost']['app']['Office365Settings']['AuthEndpoint'] = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize"
default['mattermost']['app']['Office365Settings']['TokenEndpoint'] = "https://login.microsoftonline.com/common/oauth2/v2.0/token"
default['mattermost']['app']['Office365Settings']['UserApiEndpoint'] = "https://graph.microsoft.com/v1.0/me"

# LDAP Settings
default['mattermost']['app']['LdapSettings']['Enable'] = false
default['mattermost']['app']['LdapSettings']['LdapServer'] = ""
default['mattermost']['app']['LdapSettings']['LdapPort'] = 389
default['mattermost']['app']['LdapSettings']['ConnectionSecurity'] = ""
default['mattermost']['app']['LdapSettings']['BaseDN'] = ""
default['mattermost']['app']['LdapSettings']['BindUsername'] = ""
default['mattermost']['app']['LdapSettings']['BindPassword'] = ""
default['mattermost']['app']['LdapSettings']['UserFilter'] = ""
default['mattermost']['app']['LdapSettings']['FirstNameAttribute'] = ""
default['mattermost']['app']['LdapSettings']['LastNameAttribute'] = ""
default['mattermost']['app']['LdapSettings']['EmailAttribute'] = ""
default['mattermost']['app']['LdapSettings']['UsernameAttribute'] = ""
default['mattermost']['app']['LdapSettings']['NicknameAttribute'] = ""
default['mattermost']['app']['LdapSettings']['IdAttribute'] = ""
default['mattermost']['app']['LdapSettings']['PositionAttribute'] = ""
default['mattermost']['app']['LdapSettings']['SyncIntervalMinutes'] = 60
default['mattermost']['app']['LdapSettings']['SkipCertificateVerification'] = false
default['mattermost']['app']['LdapSettings']['QueryTimeout'] = 60
default['mattermost']['app']['LdapSettings']['MaxPageSize'] = 0
default['mattermost']['app']['LdapSettings']['LoginFieldName'] = ""

# Compliance Settings
default['mattermost']['app']['ComplianceSettings']['Enable'] = false
default['mattermost']['app']['ComplianceSettings']['Directory'] = "./data"
default['mattermost']['app']['ComplianceSettings']['EnableDaily'] = false

# Localization Settings
default['mattermost']['app']['LocalizationSettings']['DefaultServerLocale'] = "en"
default['mattermost']['app']['LocalizationSettings']['DefaultClientLocale'] = "en"
default['mattermost']['app']['LocalizationSettings']['AvailableLocales'] = ""

# SAML Settings
default['mattermost']['app']['SamlSettings']['Enable'] = false
default['mattermost']['app']['SamlSettings']['Verify'] = false
default['mattermost']['app']['SamlSettings']['Encrypt'] = false
default['mattermost']['app']['SamlSettings']['IdpUrl'] = ""
default['mattermost']['app']['SamlSettings']['IdpDescriptorUrl'] = ""
default['mattermost']['app']['SamlSettings']['AssertionConsumerServiceURL'] = ""
default['mattermost']['app']['SamlSettings']['IdpCertificateFile'] = ""
default['mattermost']['app']['SamlSettings']['PublicCertificateFile'] = ""
default['mattermost']['app']['SamlSettings']['PrivateKeyFile'] = ""
default['mattermost']['app']['SamlSettings']['FirstNameAttribute'] = ""
default['mattermost']['app']['SamlSettings']['LastNameAttribute'] = ""
default['mattermost']['app']['SamlSettings']['EmailAttribute'] = ""
default['mattermost']['app']['SamlSettings']['UsernameAttribute'] = ""
default['mattermost']['app']['SamlSettings']['NicknameAttribute'] = ""
default['mattermost']['app']['SamlSettings']['LocaleAttribute'] = ""
default['mattermost']['app']['SamlSettings']['PositionAttribute'] = ""
default['mattermost']['app']['SamlSettings']['LoginButtonText'] = "With SAML"

# Native App Settings
default['mattermost']['app']['NativeAppSettings']['AppDownloadLink'] = "https://about.mattermost.com/downloads/"
default['mattermost']['app']['NativeAppSettings']['AndroidAppDownloadLink'] = "https://about.mattermost.com/mattermost-android-app/"
default['mattermost']['app']['NativeAppSettings']['IosAppDownloadLink'] = "https://about.mattermost.com/mattermost-ios-app/"

# Cluster Settings
default['mattermost']['app']['ClusterSettings']['Enable'] = false
default['mattermost']['app']['ClusterSettings']['InterNodeListenAddres'] = ":8075"
default['mattermost']['app']['ClusterSettings']['InterNodeUrls'] = []

# Metrics Settings
default['mattermost']['app']['MetricsSettings']['Enable'] = false
default['mattermost']['app']['MetricsSettings']['BlockProfileRate'] = 0
default['mattermost']['app']['MetricsSettings']['ListenAddress'] = ":8067"

# Analytics Settings
default['mattermost']['app']['AnalyticsSettings']['MaxUsersForStatistics'] = 2500

# Webrtc Settings
default['mattermost']['app']['WebrtcSettings']['Enable'] = false
default['mattermost']['app']['WebrtcSettings']['GatewayWebsocketUrl'] = ""
default['mattermost']['app']['WebrtcSettings']['GatewayAdminUrl'] = ""
default['mattermost']['app']['WebrtcSettings']['GatewayAdminSecret'] = ""
default['mattermost']['app']['WebrtcSettings']['StunURI'] = ""
default['mattermost']['app']['WebrtcSettings']['TurnURI'] = ""
default['mattermost']['app']['WebrtcSettings']['TurnUsername'] = ""
default['mattermost']['app']['WebrtcSettings']['TurnSharedKey'] = ""


# # Service Settings
# default['mattermost']['app']['ListenAddress'] = ":8065"
# default['mattermost']['app']['MaximumLoginAttempts'] = 10
# default['mattermost']['app']['SegmentDeveloperKey'] = ""
# default['mattermost']['app']['GoogleDeveloperKey'] = ""
# default['mattermost']['app']['EnableOAuthServiceProvider'] = false
# default['mattermost']['app']['EnableIncomingWebhooks'] = false
# default['mattermost']['app']['EnableOutgoingWebhooks'] = false
# default['mattermost']['app']['EnableCommands'] = false
# default['mattermost']['app']['EnableOnlyAdminIntegrations'] = true
# default['mattermost']['app']['EnablePostUsernameOverride'] = false
# default['mattermost']['app']['EnablePostIconOverride'] = false
# default['mattermost']['app']['EnableTesting'] = false
# default['mattermost']['app']['EnableDeveloper'] = false
# default['mattermost']['app']['EnableSecurityFixAlert'] = true
# default['mattermost']['app']['EnableInsecureOutgoingConnections'] = false
# default['mattermost']['app']['SessionLengthWebInDays'] = 30
# default['mattermost']['app']['SessionLengthMobileInDays'] = 30
# default['mattermost']['app']['SessionLengthSSOInDays'] = 30
# default['mattermost']['app']['SessionCacheInMinutes'] = 10
# default['mattermost']['app']['AllowFrameFrom'] = ""

# # TeamSettings
# default['mattermost']['app']['SiteName'] = "Mattermost"
# default['mattermost']['app']['MaxUsersPerTeam'] = 50
# default['mattermost']['app']['EnableTeamCreation'] = true
# default['mattermost']['app']['EnableUserCreation'] = true
# default['mattermost']['app']['RestrictCreationToDomains'] = ""
# default['mattermost']['app']['RestrictTeamNames'] = true
# default['mattermost']['app']['EnableTeamListing'] = false

# # SQL Settings
# default['mattermost']['app']['DriverName'] = "mysql"
# default['mattermost']['app']['DataSourceReplicas'] = "[]"
# default['mattermost']['app']['MaxIdleConns'] = 10
# default['mattermost']['app']['MaxOpenConns'] = 10
# default['mattermost']['app']['Trace'] = false
# default['mattermost']['app']['AtRestEncryptKey'] = "7rAh6iwQCkV4cA1Gsg3fgGOXJAQ43QVg"

# # LogSettings
# default['mattermost']['app']['EnableConsole'] = true
# default['mattermost']['app']['ConsoleLevel'] = "DEBUG"
# default['mattermost']['app']['EnableFile'] = true
# default['mattermost']['app']['FileLevel'] = "INFO"
# default['mattermost']['app']['FileFormat'] = ""
# default['mattermost']['app']['FileLocation'] = ""

# # FileSettings
# default['mattermost']['app']['File_Driver_Name'] = "local"
# default['mattermost']['app']['Directory'] = "./data/"
# default['mattermost']['app']['EnablePublicLink'] = true
# default['mattermost']['app']['PublicLinkSalt'] = "A705AklYF8MFDOfcwh3I488G8vtLlVip"
# default['mattermost']['app']['ThumbnailWidth'] = 120
# default['mattermost']['app']['ThumbnailHeight'] = 100
# default['mattermost']['app']['PreviewWidth'] = 1024
# default['mattermost']['app']['PreviewHeight'] = 0
# default['mattermost']['app']['ProfileWidth'] = 128
# default['mattermost']['app']['ProfileHeight'] = 128
# default['mattermost']['app']['InitialFont'] = "luximbi.ttf"
# default['mattermost']['app']['AmazonS3AccessKeyId'] = ""
# default['mattermost']['app']['AmazonS3SecretAccessKey'] = ""
# default['mattermost']['app']['AmazonS3Bucket'] = ""
# default['mattermost']['app']['AmazonS3Region'] = ""
# default['mattermost']['app']['AmazonS3Endpoint'] = ""
# default['mattermost']['app']['AmazonS3BucketEndpoint'] = ""
# default['mattermost']['app']['AmazonS3LocationConstraint'] = false
# default['mattermost']['app']['AmazonS3LowercaseBucket'] = false

# #EmailSettings
# default['mattermost']['app']['EnableSignUpWithEmail'] = true
# default['mattermost']['app']['EnableSignInWithEmail'] = true
# default['mattermost']['app']['EnableSignInWithUsername'] = false
# default['mattermost']['app']['SendEmailNotifications'] = false
# default['mattermost']['app']['RequireEmailVerification'] = false
# default['mattermost']['app']['FeedbackName'] = ""
# default['mattermost']['app']['FeedbackEmail'] = ""
# default['mattermost']['app']['SMTPUsername'] = ""
# default['mattermost']['app']['SMTPPassword'] = ""
# default['mattermost']['app']['SMTPServer'] = ""
# default['mattermost']['app']['SMTPPort'] = ""
# default['mattermost']['app']['ConnectionSecurity'] = ""
# default['mattermost']['app']['InviteSalt'] = "bjlSR4QqkXFBr7TP4oDzlfZmcNuH9YoS"
# default['mattermost']['app']['PasswordResetSalt'] = "vZ4DcKyVVRlKHHJpexcuXzojkE5PZ5eL"
# default['mattermost']['app']['SendPushNotifications'] = false
# default['mattermost']['app']['PushNotificationServer'] = ""

# # RateLimitSettings
# default['mattermost']['app']['EnableRateLimiter'] = true
# default['mattermost']['app']['PerSec'] = 10
# default['mattermost']['app']['MemoryStoreSize'] = 10000
# default['mattermost']['app']['VaryByRemoteAddr'] = true
# default['mattermost']['app']['VaryByHeader'] = ""

# # PrivacySettings
# default['mattermost']['app']['ShowEmailAddress'] = true
# default['mattermost']['app']['ShowFullName'] = true

# #SupportSettings
# default['mattermost']['app']['TermsOfServiceLink'] = "/static/help/terms.html"
# default['mattermost']['app']['PrivacyPolicyLink'] = "/static/help/privacy.html"
# default['mattermost']['app']['AboutLink'] = "/static/help/about.html"
# default['mattermost']['app']['HelpLink'] = "/static/help/help.html"
# default['mattermost']['app']['ReportAProblemLink'] = "/static/help/report_problem.html"
# default['mattermost']['app']['SupportEmail'] = "feedback@mattermost.com"

# # GitLabSettings
# default['mattermost']['app']['Enable'] = false
# default['mattermost']['app']['Secret'] = ""
# default['mattermost']['app']['Id'] = ""
# default['mattermost']['app']['Scope'] = ""
# default['mattermost']['app']['AuthEndpoint'] = ""
# default['mattermost']['app']['TokenEndpoint'] = ""
# default['mattermost']['app']['UserApiEndpoint'] = ""

default['mattermost']['app']['ServiceSettigns'] = {
  'SiteUrl' => '',
  'LicenseFileLocation' => '',
  'ListenAddress' => '[::]:8065',
  'ConnectionSecurity' => '',
  'TLSCertFile' => '',
  'TLSKeyFile' => '',
  'UseLetsEncrypt' => false,
  'LetsEncryptCertificateCacheFile' => './config/letsencrypt.cache',
  'Forward80To443' => false,
  'ReadTimeout' => 300,
  'WriteTimeout' => 300,
  'MaximumLoginAttempts' => 16,
  'GoogleDeveloperKey' => '',
  'EnableOAuthServiceProvider' => false,
  'EnableIncomingWebhooks' => true,
  'EnableOutgoingWebhooks' => true,
  'EnableCommands' => true,
  'EnableOnlyAdminIntegrations' => true,
  'EnablePostUsernameOverride' => true,
  'EnablePostIconOverride' => true,
  'EnableLinkPreviews' => true,
  'EnableTesting' => false,
  'EnableDeveloper' => false,
  'EnableSecurityFixAlert' => true,
  'EnableInsecureOutgoingConnections' => false,
  'EnableMultifactorAuthentication' => false,
  'EnforceMultifactorAuthentication' => false,
  'AllowCorsFrom' => '*',
  'SessionLengthWebInDays' => 30,
  'SessionLengthMobileInDays' => 1800,
  'SessionLengthSSOInDays' => 30,
  'SessionCacheInMinutes' => 10,
  'WebsocketSecurePort' => 443,
  'WebsocketPort' => 80,
  'EnableCustomEmoji' => true,
  'RestrictCustomEmojiCreation' => 'all',
  'RestrictPostDelete' => 'all',
  'AllowEditPost' => 'always',
  'PostEditTimeLimit' => 300,
  'TimeBetweenUserTypingUpdatesMilliseconds' => 5000,
  'EnablePostSearch' => true,
  'EnableUserTypingMessages' => true,
  'EnableUserStatuses' => true,
  'ClusterLogTimeoutMilliseconds' => 2000,
  'AllowFrameFrom' => '',
}

default['mattermost']['app']['TeamSettings'] = {
  'SiteName' => 'Mattermost',
  'MaxUsersPerTeam' => 2147483647,
  'EnableTeamCreation' => false,
  'EnableUserCreation' => false,
  'RestrictCreationToDomains' => '',
  'EnableCustomBrand' => false,
  'CustomBrandText' => '',
  'CustomDescriptionText' => '',
  'RestrictDirectMessage' => 'team',
  'RestrictTeamInvite' => 'team_admin',
  'RestrictPublicChannelManagement' => 'team_admin',
  'RestrictPrivateChannelManagement' => 'team_admin',
  'RestrictPublicChannelCreation' => 'team_admin',
  'RestrictPrivateChannelCreation' => 'team_admin',
  'RestrictPublicChannelDeletion' => 'team_admin',
  'RestrictPrivateChannelDeletion' => 'team_admin',
  'RestrictPrivateChannelManageMembers' => 'team_admin',
  'UserStatusAwayTimeout' => 300,
  'MaxNotificationsPerChannel' => 1000,
}

default['mattermost']['app']['SqlSettings'] = {
  'DriverName' => 'mysql',
  'DataSourceReplicas' => [],
  'DataSourceSearchReplicas' => nil,
  'MaxIdleConns' => 20,
  'MaxOpenConns' => 300,
  'Trace' => false,
  'AtRestEncryptKey' => '', # SET THIS!
}

default['mattermost']['app']['LogSettings'] = {
  'EnableConsole' => false,
  'ConsoleLevel' => 'INFO',
  'EnableFile' => true,
  'FileLevel' => 'INFO',
  'FileFormat' => '',
  'FileLocation' => '',
  'EnableWebhookDebugging' => true,
  'EnableDiagnostics' => true,
}

default['mattermost']['app']['PasswordSettings'] = {
  'MinimumLength' => 5,
  'Lowercase' => false,
  'Number' => false,
  'Uppercase' => false,
  'Symbol' => false,
}

default['mattermost']['app']['FileSettings'] = {
  'EnableFileAttachments' => true,
  'MaxFileSize' => 52428800,
  'DriverName' => 'local',
  'Directory' => './data/',
  'EnablePublicLink' => false,
  'PublicLinkSalt' => '', # SET THIS!
  'ThumbnailWidth' => 120,
  'ThumbnailHeight' => 100,
  'PreviewWidth' => 1024,
  'PreviewHeight' => 0,
  'ProfileWidth' => 128,
  'ProfileHeight' => 128,
  'InitialFont' => 'luximbi.ttf',
  'AmazonS3AccessKeyId' => '',
  'AmazonS3SecretAccessKey' => '',
  'AmazonS3Bucket' => '',
  'AmazonS3Region' => 'us-east-1',
  'AmazonS3Endpoint' => 's3.amazonaws.com',
  'AmazonS3SSL' => true,
}

default['mattermost']['app']['EmailSettings'] = {
  'EnableSignUpWithEmail' => true,
  'EnableSignInWithEmail' => true,
  'EnableSignInWithUsername' => true,
  'SendEmailNotifications' => true,
  'RequireEmailVerification' => false,
  'FeedbackName' => '',
  'FeedbackEmail' => '',
  'FeedbackOrganization' => '',
  'SMTPUsername' => '',
  'SMTPPassword' => '',
  'SMTPServer' => '',
  'SMTPPort' => '',
  'ConnectionSecurity' => '',
  'InviteSalt' => '', # SET THIS!
  'PasswordResetSalt' => '', # SET THIS!
  'SendPushNotifications' => true,
  'PushNotificationServer' => 'http://push-test.mattermost.com',
  'PushNotificationContents' => 'generic',
  'EnableEmailBatching' => true,
  'EmailBatchingBufferSize' => 256,
  'EmailBatchingInterval' => 30,
  'SkipServerCertificateVerification' => false,
}

default['mattermost']['app']['RateLimitSettings'] = {
  'Enable' => false,
  'PerSec' => 10,
  'MaxBurst' => 100,
  'MemoryStoreSize' => 1000,
  'VaryByRemoteAddr' => true,
  'VaryByHeader' => '',
}

default['mattermost']['app']['PrivacySettings'] = {
  'ShowEmailAddress' => false,
  'ShowFullName' => true,
}

default['mattermost']['app']['SupportSettings'] = {
  'TermsOfServiceLink' => 'https://about.mattermost.com/default-terms/',
  'PrivacyPolicyLink' => 'https://about.mattermost.com/default-privacy-policy/',
  'AboutLink' => 'https://about.mattermost.com/default-about/',
  'HelpLink' => 'https://about.mattermost.com/default-help/',
  'ReportAProblemLink' => 'https://about.mattermost.com/default-report-a-problem/',
  'SupportEmail' => 'feedback@mattermost.com',
}

default['mattermost']['app']['GitLabSettings'] = {
  'Enable' => false,
  'Secret' => '',
  'Id' => '',
  'Scope' => '',
  'AuthEndpoint' => '',
  'TokenEndpoint' => '',
  'UserApiEndpoint' => '',
}

default['mattermost']['app']['GoogleSettings'] = {
  'Enable' => false,
  'Secret' => '',
  'Id' => '',
  'Scope' => 'profile email',
  'AuthEndpoint' => 'https://accounts.google.com/o/oauth2/v2/auth',
  'TokenEndpoint' => 'https://www.googleapis.com/oauth2/v4/token',
  'UserApiEndpoint' => 'https://www.googleapis.com/plus/v1/people/me',
}

default['mattermost']['app']['Office365Settings'] = {
  'Enable' => false,
  'Secret' => '',
  'Id' => '',
  'Scope' => 'profile email',
  'AuthEndpoint' => 'https://login.microsoftonline.com/common/oauth2/v2.0/authorize',
  'TokenEndpoint' => 'https://login.microsoftonline.com/common/oauth2/v2.0/token',
  'UserApiEndpoint' => 'https://graph.microsoft.com/v1.0/me',
}

default['mattermost']['app']['LdapSettings'] = {
  'Enable' => false,
  'LdapServer' => '',
  'LdapPort' => 389,
  'ConnectionSecurity' => '',
  'BaseDN' => '',
  'BindUsername' => '',
  'BindPassword' => '',
  'UserFilter' => '',
  'FirstNameAttribute' => '',
  'LastNameAttribute' => '',
  'EmailAttribute' => '',
  'UsernameAttribute' => '',
  'NicknameAttribute' => '',
  'IdAttribute' => '',
  'PositionAttribute' => '',
  'SyncIntervalMinutes' => 60,
  'SkipCertificateVerification' => false,
  'QueryTimeout' => 60,
  'MaxPageSize' => 0,
  'LoginFieldName' => '',
}

default['mattermost']['app']['ComplianceSettings'] = {
  'Enable' => false,
  'Directory' => './data',
  'EnableDaily' => false,
}

default['mattermost']['app']['LocalizationSettings'] = {
  'DefaultServerLocale' => 'en',
  'DefaultClientLocale' => 'en',
  'AvailableLocales' => '',
}

default['mattermost']['app']['SamlSettings'] = {
  'Enable' => false,
  'Verify' => false,
  'Encrypt' => false,
  'IdpUrl' => '',
  'IdpDescriptorUrl' => '',
  'AssertionConsumerServiceURL' => '',
  'IdpCertificateFile' => '',
  'PublicCertificateFile' => '',
  'PrivateKeyFile' => '',
  'FirstNameAttribute' => '',
  'LastNameAttribute' => '',
  'EmailAttribute' => '',
  'UsernameAttribute' => '',
  'NicknameAttribute' => '',
  'LocaleAttribute' => '',
  'PositionAttribute' => '',
  'LoginButtonText' => 'With SAML',
}

default['mattermost']['app']['NativeAppSettings'] = {
  'AppDownloadLink' => 'https://about.mattermost.com/downloads/',
  'AndroidAppDownloadLink' => 'https://about.mattermost.com/mattermost-android-app/',
  'IosAppDownloadLink' => 'https://about.mattermost.com/mattermost-ios-app/',
}

default['mattermost']['app']['ClusterSettings'] = {
  'Enable' => false,
  'InterNodeListenAddres' => ':8075',
  'InterNodeUrls' => [],
}

default['mattermost']['app']['MetricsSettings'] = {
  'Enable' => false,
  'BlockProfileRate' => 0,
  'ListenAddress' => ':8067',
}

default['mattermost']['app']['AnalyticsSettings']['MaxUsersForStatistics'] = 2500

default['mattermost']['app']['WebrtcSettings'] = {
  'Enable' => false,
  'GatewayWebsocketUrl' => '',
  'GatewayAdminUrl' => '',
  'GatewayAdminSecret' => '',
  'StunURI' => '',
  'TurnURI' => '',
  'TurnUsername' => '',
  'TurnSharedKey' => '',
}

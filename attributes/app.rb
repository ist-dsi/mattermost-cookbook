default['mattermost']['app']['service_settings'] = {
  'site_url' => '',
  'websocket_url' => '',
  'license_file_location' => '',
  'listen_address' => ':8065',
  'connection_security' => '',
  'tls_cert_file' => '',
  'tls_key_file' => '',
  'tls_min_ver' => '1.2',
  'tls_strict_transport' => false,
  'tls_strict_transport_max_age' => 63072000,
  'tls_overwrite_ciphers' => [],
  'use_lets_encrypt' => false,
  'lets_encrypt_certificate_cache_file' => './config/letsencrypt.cache',
  'forward_80_to_443' => false,
  'read_timeout' => 300,
  'write_timeout' => 300,
  'maximum_login_attempts' => 10,
  'goroutine_health_threshold' => -1,
  'google_developer_key' => '',
  'enable_oauth_service_provider' => false,
  'enable_incoming_webhooks' => true,
  'enable_outgoing_webhooks' => true,
  'enable_commands' => true,
  'enable_only_admin_integrations' => true,
  'enable_post_username_override' => false,
  'enable_post_icon_override' => false,
  'enable_api_v3' => false,
  'enable_link_previews' => true,
  'enable_testing' => false,
  'enable_developer' => false,
  'enable_security_fix_alert' => true,
  'enable_insecure_outgoing_connections' => false,
  'enable_untrusted_internal_connections' => '',
  'enable_multifactor_authentication' => false,
  'enforce_multifactor_authentication' => false,
  'enable_user_access_tokens' => false,
  'allow_cors_from' => '',
  'cors_exposed_headers' => '',
  'cors_allow_credentials' => false,
  'cors_debug' => false,
  'allow_cookies_for_subdomains' => false,
  'session_length_web_in_days' => 30,
  'session_length_mobile_in_days' => 30,
  'session_length_sso_in_days' => 30,
  'session_cache_in_minutes' => 10,
  'session_idle_timeout_in_minutes' => 0,
  'websocket_secure_port' => 443,
  'websocket_port' => 80,
  'webserver_mode' => 'gzip',
  'enable_custom_emoji' => false,
  'enable_custom_picker' => true,
  'enable_gif_picker' => false,
  'gfycat_api_key' => '2_KtH_W5',
  'gfycat_api_secret' => '3wLVZPiswc3DnaiaFoLkDvB4X0IV6CpMkj4tf2inJRsBY6-FnkT08zGmppWFgeof',
  'restrict_custom_emoji_creation' => 'all',
  'restrict_post_delete' => 'all',
  'allow_edit_post' => 'always',
  'post_edit_time_limit' => -1,
  'time_between_user_typing_updates_milliseconds' => 5000,
  'enable_post_search' => true,
  'enable_user_typing_messages' => true,
  'enable_channel_viewed_messages' => true,
  'enable_user_statuses' => true,
  'experimental_enable_authentication_transfer' => true,
  'cluster_log_timeout_milliseconds' => 2000,
  'close_unused_direct_messages' => false,
  'enable_preview_features' => true,
  'enable_tutorial' => true,
  'experimental_enable_default_channel_leave_join_messages' => true,
  'experimental_group_unread_channels' => 'disabled',
  'group_filter' => '',
  'group_display_name_attribute' => '',
  'group_id_attribute' => '',
  'enable_api_team_deletion' => false,
  'experimental_enable_hardened_mode' => false,
  'experimental_limit_client_config' => false,
  'enable_email_invitations' => false,
  'disable_legacy_mfa' => false,
  'minimum_hashtag_length' => 3,
  'enable_bot_account_creation' => false,
  'disable_bots_when_owner_is_deactivated' => true,
  'trusted_proxy_ip_header' => [],
  'enable_latex' => true,
  'enable_open_tracing' => false,
  'idle_timeout' => 60,
  'experimental_channel_sidebar_organization' => 'off',
  'extend_session_length_with_activity' => true,
  'enable_local_mode' => false,
  'local_mode_socket_location' => '/var/tmp/mattermost_local.socket',
  'experimental_data_prefetch' => true,
}
default['mattermost']['app']['image_proxy_settings'] = {
  'enable_image_proxy' => true,
  'image_proxy_type' => 'local',
  'remote_image_proxy_url' => '',
  'remote_image_proxy_options' => '',
}

default['mattermost']['app']['team_settings'] = {
  'site_name' => 'Mattermost',
  'max_users_per_team' => 50,
  'enable_team_creation' => true,
  'enable_user_creation' => true,
  'enable_open_server' => false,
  'enable_user_deactivation' => false,
  'restrict_creation_to_domains' => '',
  'enable_custom_brand' => false,
  'custom_brand_text' => '',
  'custom_description_text' => '',
  'restrict_direct_message' => 'any',
  'restrict_team_invite' => 'all',
  'restrict_public_channel_management' => 'all',
  'restrict_private_channel_management' => 'all',
  'restrict_public_channel_creation' => 'all',
  'restrict_private_channel_creation' => 'all',
  'restrict_public_channel_deletion' => 'all',
  'restrict_private_channel_deletion' => 'all',
  'restrict_private_channel_manage_members' => 'all',
  'enable_x_to_leave_channels_from_lhs' => false,
  'user_status_away_timeout' => 300,
  'max_channels_per_team' => 2000,
  'max_notifications_per_channel' => 1000,
  'enable_confirm_notifications_to_channel' => true,
  'teammate_name_display' => 'username',
  'experimental_view_archived_channels' => false,
  'experimental_default_channels' => '',
  'experimental_enable_automatic_replies' => false,
  'experimental_hide_town_square_in_lhs' => false,
  'experimental_town_square_is_read_only' => false,
  'experimental_primary_team' => '',
  'lock_teammate_name_display' => [],
}

default['mattermost']['app']['client_requirements'] = {
  'android_latest_version' => '',
  'android_min_version' => '',
  'desktop_latest_version' => '',
  'desktop_min_version' => '',
  'ios_latest_version' => '',
  'ios_min_version' => '',
}

default['mattermost']['app']['sql_settings'] = {
  'driver_name' => 'mysql',
  'address' => 'localhost',
  'port' => '3306',
  'username' => 'mmuser',
  'password' => 'mostest',
  'name' => 'mattermost_test',
  'data_source_replicas' => [],
  'data_source_search_replicas' => [],
  'conn_max_lifetime_milliseconds' => 3600000,
  'max_idle_conns' => 20,
  'max_open_conns' => 300,
  'trace' => false,
  'at_rest_encrypt_key' => '',
  'query_timeout' => 30,
  'enable_public_channels_materialization' => true,
  'disable_database_search' => false,
}

default['mattermost']['app']['notification_log_settings'] = {
  'enable_console' => true,
  'console_level' => 'DEBUG',
  'console_json' => true,
  'enable_file' => true,
  'file_level' => 'INFO',
  'file_json' => true,
  'file_location' => '/var/log/mattermost',
}

default['mattermost']['app']['log_settings'] = {
  'enable_console' => true,
  'console_level' => 'DEBUG',
  'console_json' => true,
  'enable_file' => true,
  'file_level' => 'INFO',
  'file_json' => true,
  'file_location' => '/var/log/mattermost',
  'enable_webhook_debugging' => true,
  'enable_diagnostics' => true,
}

default['mattermost']['app']['password_settings'] = {
  'minimum_length' => 5,
  'lowercase' => false,
  'number' => false,
  'uppercase' => false,
  'symbol' => false,
}

default['mattermost']['app']['file_settings'] = {
  'enable_file_attachments' => true,
  'enable_mobile_upload' => true,
  'enable_mobile_download' => true,
  'max_file_size' => 52428800,
  'driver_name' => 'local',
  'directory' => './data/',
  'enable_public_link' => false,
  'public_link_salt' => '', # SET THIS!
  'initial_font' => 'luximbi.ttf',
  'amazon_s3_access_key_id' => '',
  'amazon_s3_secret_access_key' => '',
  'amazon_s3_bucket' => '',
  'amazon_s3_region' => '',
  'amazon_s3_endpoint' => 's3.amazonaws.com',
  'amazon_s3_ssl' => true,
  'amazon_s3_sign_v2' => false,
  'amazon_s3_sse' => false,
  'amazon_s3_trace' => false,
  'amazon_S3_path_prefix' => '',
}

default['mattermost']['app']['email_settings'] = {
  'enable_sign_up_with_email' => true,
  'enable_sign_in_with_email' => true,
  'enable_sign_in_with_username' => true,
  'send_email_notifications' => true,
  'use_channel_in_email_notifications' => false,
  'require_email_verification' => false,
  'feedback_name' => '',
  'feedback_email' => 'test@example.com',
  'feedback_organization' => '',
  'enable_smtp_auth' => false,
  'smtp_username' => '',
  'smtp_password' => '',
  'smtp_server' => 'localhost',
  'smtp_server_timeout' => 10,
  'smtp_port' => '2500',
  'connection_security' => '',
  'invite_salt' => '', # SET THIS!
  'send_push_notifications' => false,
  'push_notification_server' => '',
  'push_notification_contents' => 'generic',
  'push_notification_buffer' => 1000,
  'enable_email_batching' => false,
  'email_batching_buffer_size' => 256,
  'email_batching_interval' => 30,
  'enable_preview_mode_banner' => true,
  'skip_server_certificate_verification' => false,
  'email_notification_contents_type' => 'full',
  'login_button_color' => '',
  'login_button_border_color' => '',
  'login_button_text_color' => '',
}

default['mattermost']['app']['rate_limit_settings'] = {
  'enable' => false,
  'per_sec' => 10,
  'max_burst' => 100,
  'memory_store_size' => 10000,
  'vary_by_remote_addr' => true,
  'vary_by_user' => false,
  'vary_by_header' => '',
}

default['mattermost']['app']['privacy_settings'] = {
  'show_email_address' => true,
  'show_full_name' => true,
}

default['mattermost']['app']['support_settings'] = {
  'terms_of_service_link' => 'https://about.mattermost.com/default-terms/',
  'privacy_policy_link' => 'https://about.mattermost.com/default-privacy-policy/',
  'about_link' => 'https://about.mattermost.com/default-about/',
  'help_link' => 'https://about.mattermost.com/default-help/',
  'report_a_problem_link' => 'https://about.mattermost.com/default-report-a-problem/',
  'support_email' => 'feedback@mattermost.com',
}

default['mattermost']['app']['announcement_settings'] = {
  'enable_banner' => false,
  'banner_text' => '',
  'banner_color' => '#f2a93b',
  'banner_text_color' => '#333333',
  'allow_banner_dismissal' => true,
}

default['mattermost']['app']['theme_settings'] = {
  'enable_theme_selection' => true,
  'default_theme' => 'default',
  'allow_custom_themes' => true,
  'allowed_themes' => [],
}

default['mattermost']['app']['gitlab_settings'] = {
  'enable' => false,
  'secret' => '',
  'id' => '',
  'scope' => '',
  'auth_endpoint' => '',
  'token_endpoint' => '',
  'user_api_endpoint' => '',
}

default['mattermost']['app']['google_settings'] = {
  'enable' => false,
  'secret' => '',
  'id' => '',
  'scope' => 'profile email',
  'auth_endpoint' => 'https://accounts.google.com/o/oauth2/v2/auth',
  'token_endpoint' => 'https://www.googleapis.com/oauth2/v4/token',
  'user_api_endpoint' => 'https://www.googleapis.com/plus/v1/people/me',
}

default['mattermost']['app']['office_365_settings'] = {
  'enable' => false,
  'secret' => '',
  'id' => '',
  'scope' => 'User.Read',
  'auth_endpoint' => 'https://login.microsoftonline.com/common/oauth2/v2.0/authorize',
  'token_endpoint' => 'https://login.microsoftonline.com/common/oauth2/v2.0/token',
  'user_api_endpoint' => 'https://graph.microsoft.com/v1.0/me',
}

default['mattermost']['app']['ldap_settings'] = {
  'enable' => false,
  'enable_sync' => false,
  'ldap_server' => '',
  'ldap_port' => 389,
  'connection_security' => '',
  'base_dn' => '',
  'bind_username' => '',
  'bind_password' => '',
  'user_filter' => '',
  'first_name_attribute' => '',
  'last_name_attribute' => '',
  'email_attribute' => '',
  'username_attribute' => '',
  'nickname_attribute' => '',
  'id_attribute' => '',
  'position_attribute' => '',
  'login_id_attribute' => '',
  'sync_interval_minutes' => 60,
  'skip_certificate_verification' => false,
  'query_timeout' => 60,
  'max_page_size' => 0,
  'login_field_name' => '',
  'login_button_color' => '',
  'login_button_border_color' => '',
  'login_button_text_color' => '',
  'guest_filter' => '',
  'enable_admin_filter' => false,
  'admin_filter' => '',
  'picture_attribute' => '',
}

default['mattermost']['app']['compliance_settings'] = {
  'enable' => false,
  'directory' => './data/',
  'enable_daily' => false,
}

default['mattermost']['app']['localization_settings'] = {
  'default_server_locale' => 'en',
  'default_client_locale' => 'en',
  'available_locales' => '',
}

default['mattermost']['app']['saml_settings'] = {
  'enable' => false,
  'enable_sync_with_ldap' => false,
  'enable_sync_with_ldap_include_auth' => false,
  'verify' => true,
  'encrypt' => true,
  'idp_url' => '',
  'idp_descriptor_url' => '',
  'assertion_consumer_service_url' => '',
  'scoping_idp_provider_id' => '',
  'scoping_idp_name' => '',
  'idp_certificate_file' => '',
  'public_certificate_file' => '',
  'private_key_file' => '',
  'id_attribute' => '',
  'first_name_attribute' => '',
  'last_name_attribute' => '',
  'email_attribute' => '',
  'username_attribute' => '',
  'nickname_attribute' => '',
  'locale_attribute' => '',
  'position_attribute' => '',
  'login_button_text' => 'With SAML',
  'login_button_color' => '',
  'login_button_border_color' => '',
  'login_button_text_color' => '',
  'signature_algorithm' => '',
  'canonical_algorithm' => '',
  'guest_attribute' => '',
  'idp_metadata_url' => '',
  'enable_admin_attribute' => true,
  'admin_attribute' => '',
  'service_provider_identifier' => '',
}

default['mattermost']['app']['native_app_settings'] = {
  'app_download_link' => 'https://mattermost.com/download/#mattermostApps',
  'android_app_download_link' => 'https://about.mattermost.com/mattermost-android-app/',
  'ios_app_download_link' => 'https://about.mattermost.com/mattermost-ios-app/',
}

default['mattermost']['app']['cluster_settings'] = {
  'enable' => false,
  'cluster_name' => '',
  'override_hostname' => '',
  'use_ip_address' => true,
  'use_experimental_gossip' => false,
  'read_only_config' => true,
  'gossip_port' => 8074,
  'streaming_port' => 8075,
  'max_idle_conns' => 100,
  'max_idle_conns_per_host' => 128,
  'idle_conn_timeout_milliseconds' => 90000,
  'network_interface' => '',
  'bind_address' => '',
  'advertise_address' => '',
  'enable_experimental_gossip_encryption' => false,
}

default['mattermost']['app']['metrics_settings'] = {
  'enable' => false,
  'block_profile_rate' => 0,
  'listen_address' => ':8067',
}

default['mattermost']['app']['experimental_settings'] = {
  'restrict_system_admin' => false,
  'client_side_cert_enable' => false,
  'client_side_cert_check' => 'secondary',
  'disable_post_metadata' => false,
  'link_metadata_timeout_milliseconds' => 5000,
}

default['mattermost']['app']['analytics_settings']['max_users_for_statistics'] = 2500

default['mattermost']['app']['webrtc_settings'] = {
  'enable' => false,
  'gateway_websocket_url' => '',
  'gateway_admin_url' => '',
  'gateway_admin_secret' => '',
  'stun_uri' => '',
  'turn_uri' => '',
  'turn_username' => '',
  'turn_shared_key' => '',
}

default['mattermost']['app']['elastic_search_settings'] = {
  'connection_url' => 'http://localhost:9200',
  'username' => 'elastic',
  'password' => 'changeme',
  'enable_indexing' => false,
  'enable_searching' => false,
  'skip_tls_verification' => false,
  'sniff' => true,
  'post_index_replicas' => 1,
  'post_index_shards' => 1,
  'aggregate_posts_after_days' => 365,
  'post_aggregator_job_start_time' => '03:00',
  'index_prefix' => '',
  'live_indexing_batch_size' => 1,
  'request_timeout_seconds' => 30,
  'bulk_indexing_time_window_seconds' => 3600,
}

default['mattermost']['app']['data_retention_settings'] = {
  'enable_message_deletion' => false,
  'enable_file_deletion' => false,
  'message_retention_days' => 365,
  'file_retention_days' => 365,
  'deletion_job_start_time' => '02:00',
}

default['mattermost']['app']['message_export_settings'] = {
  'enable_export' => false,
  'daily_run_time' => '01:00',
  'export_from_timestamp' => 0,
  'file_location' => 'export',
  'batch_size' => 10000,
  'global_relay_settings' => {
    'customer_type' => 'A9',
    'smtp_username' => '',
    'smtp_password' => '',
    'email_address' => '',
  },
}

default['mattermost']['app']['job_settings'] = {
  'run_jobs' => true,
  'run_scheduler' => true,
}

default['mattermost']['app']['plugin_settings'] = {
  'enable' => true,
  'enable_uploads' => false,
  'directory' => 'plugins',
  'client_directory' => 'client/plugins',
  'enable_health_check' => true,
  'plugins' => {},
  'plugin_states' => {},
  'enable_market_place' => true,
  'market_place_url' => 'https://marketplace.integrations.mattermost.com',
  'require_plugin_signature' => true,
  'signature_public_keyfiles' => {},
  'enable_remote_marketplace' => true,
  'automatic_prepackaged_plugins' => true,
}

default['mattermost']['app']['compliance_Settings'] = {
  'sign_request' => '',
}

default['mattermost']['app']['guest_accounts_settings'] = {
  'enable' => false,
  'allow_email_accounts' => true,
  'enforce_multifactor_authentication' => false,
  'restrict_creation_to_domains' => true,
}

default['mattermost']['app']['bleve_settings'] = {
  'index_dir' => '',
  'enable_indexing' => false,
  'enable_searching' => false,
  'enable_autocomplete' => false,
  'bulk_indexing_time_window_seconds' => 3600,
}

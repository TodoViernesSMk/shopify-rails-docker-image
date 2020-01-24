ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  # config.api_key = ENV['SHOPIFY_API_KEY']
  # config.secret = ENV['SHOPIFY_API_SECRET']
  config.api_key = '6c712bb81f3a42ce46a3b548033263ff'
  config.secret = '1d0e21677a9f0a18f87abc156bc33007'
  config.old_secret = ""
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = "2020-01"
  config.session_repository = 'ShopifyApp::InMemorySessionStore'
end

# ShopifyApp::Utils.fetch_known_api_versions                        # Uncomment to fetch known api versions from shopify servers on boot
# ShopifyAPI::ApiVersion.version_lookup_mode = :raise_on_unknown    # Uncomment to raise an error if attempting to use an api version that was not previously known

ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  # config.api_key = ENV['SHOPIFY_API_KEY']
  # config.secret = ENV['SHOPIFY_API_SECRET']
  config.api_key = 'dc840c1f9859f661d9beca6414e423bc'
  config.secret = '2be57934f161d050966b1487e26f242d'
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

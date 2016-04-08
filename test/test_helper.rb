ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

FakeWeb.register_uri(:get, LetterPanelProvider::SITE_URL, body: "<body>#{'a' * 1000}<body>")
FakeWeb.register_uri(:get, TagPanelProvider::FEED_URL, body: "\\u003cb\\u003e" * 10)

class ActiveSupport::TestCase
  def parsed_json_response
    JSON.parse(response.body)
  end
  
  def get_authorized(url, params = {})
    get(url, params, authorized_env)
  end
  
  def post_authorized(url, params = {})
    post(url, params, authorized_env)
  end
  
  def authorized_env
    Hash["HTTP_AUTHORIZATION", ActionController::HttpAuthentication::Basic.encode_credentials("admin", "secret")]
  end
  
  def create(*args)
    Traver.create(*args)
  end
end

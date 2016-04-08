ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
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
end

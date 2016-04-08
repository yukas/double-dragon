require "test_helper"

class LocationsTest < ActionDispatch::IntegrationTest
  def test_refuses_unauthorized_access
    get api_v1_private_locations_path(country_code: "BY")
    
    assert_response(401)
  end
end
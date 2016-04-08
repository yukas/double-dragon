require "test_helper"

class SecurityTest < ActionDispatch::IntegrationTest
  def test_allow_authenticated_access
    get_authorized api_v1_private_locations_path(country_code: "BY")
    assert_response(200)
    
    get_authorized api_v1_private_target_groups_path(country_code: "BY")
    assert_response(200)
  end
  
  def test_dissallow_unauthenticated_access
    get api_v1_private_locations_path(country_code: "BY")
    assert_response(401)
    
    get api_v1_private_target_groups_path(country_code: "BY")
    assert_response(401)
  end
end
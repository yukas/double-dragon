require "test_helper"

class TargetGroupsTest < ActionDispatch::IntegrationTest
  def test_refuses_unauthorized_access
    get api_v1_private_target_groups_path(country_code: "BY")
    
    assert_response(401)
  end
end
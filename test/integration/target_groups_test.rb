require "test_helper"

class TargetGroupsTest < ActionDispatch::IntegrationTest
  def test_returns_target_groups_which_belong_to_the_selected_country
    get api_v1_public_target_groups_path(country_code: "BY")
    
    assert_response :success
    assert_equal "Target Group", parsed_json_response.first["name"]
  end
end
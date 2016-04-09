require "test_helper"

class TargetGroupsTest < ActionDispatch::IntegrationTest
  def test_returns_target_groups_which_belong_to_the_selected_country_based_on_its_panel_provider
    create(target_group: {
      name: "Target Group 1",
      panel_provider: { code: "Panel Provider 1" },
      countries: [{
        country_code: "BY",
        panel_provider: :__ref__
      }]
    })
    
    create(target_group: {
      name: "Target Group 2",
      panel_provider: { code: "Panel Provider 2" },
      countries: [{
        country_code: "PL",
        panel_provider: :__ref__
      }]
    })
    
    get api_v1_public_target_groups_path(country_code: "BY")
    
    assert_equal 1, parsed_json_response.length
    assert_equal "Target Group 1", parsed_json_response.first["name"]
  end
end
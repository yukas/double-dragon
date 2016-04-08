require "test_helper"

class LocationsTest < ActionDispatch::IntegrationTest
  def test_returns_locations_which_belong_to_the_selected_country_based_on_its_panel_provider
    create(location: {
      name: "Location 1",
      location_groups: [{
        panel_provider: :__ref__,
        country: {
          country_code: "BY",
          panel_provider: { code: "Panel Provider 1" }
        },
      }]
    })
    
    create(location: {
      name: "Location 2",
      location_groups: [{
        panel_provider: :__ref__,
        country: {
          country_code: "PL",
          panel_provider: { code: "Panel Provider 2" }
        },
      }]
    })
    
    get api_v1_public_locations_path(country_code: "BY")
    
    assert_equal 1, parsed_json_response.length
    assert_equal "Location 1", parsed_json_response.first["name"]
  end
end
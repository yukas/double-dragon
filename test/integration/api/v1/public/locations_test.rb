require "test_helper"

class LocationsTest < ActionDispatch::IntegrationTest
  def test_returns_locations_which_belong_to_the_selected_country
    get api_v1_public_locations_path(country_code: "BY")
    
    assert_response :success
    assert_equal "Minsk", parsed_json_response.first["name"]
  end
end
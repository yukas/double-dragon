require "test_helper"

class EvaluateTargetTest < ActionDispatch::IntegrationTest
  def test_returns_a_price_based_on_how_many_letters_a_can_you_find_on_the_site_divided_by_100
    register_letter_price_calculator_url
    
    create(country: {
      country_code: "BY",
      panel_provider: :letter_panel_provider
    })
    
    post_authorized api_v1_private_evaluate_target_path, country_code: "BY"
    
    assert_equal 10, parsed_json_response["price"]
  end
  
  def test_returns_a_price_based_on_the_number_of_b_opening_tags_you_can_find_in_the_feed
    register_tag_price_calculator_url
    
    create(country: {
      country_code: "BY",
      panel_provider: :tag_panel_provider
    })
    
    post_authorized api_v1_private_evaluate_target_path, country_code: "BY"
    
    assert_equal 10, parsed_json_response["price"]
  end
  
  def test_returns_a_price_based_on_how_many_html_nodes_can_you_find_on_the_site_divided_by_100
    register_node_price_calculator_url
    
    create(country: {
      country_code: "BY",
      panel_provider: :node_panel_provider
    })
    
    post_authorized api_v1_private_evaluate_target_path, country_code: "BY"
    
    assert_equal 20, parsed_json_response["price"]
  end
  
  def test_refuses_unauthorized_access
    post api_v1_private_evaluate_target_path
    
    assert_response(401)
  end
end
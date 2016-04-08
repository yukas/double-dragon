require "test_helper"

class EvaluateTargetTest < ActionDispatch::IntegrationTest
  def test_returns_a_price_based_on_a_logic_specific_to_each_panel_provider_used_by_a_country
    post_authorized api_v1_private_evaluate_target_path
    
    assert_equal 5, parsed_json_response["price"]
  end
end
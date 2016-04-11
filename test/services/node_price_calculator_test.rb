require "test_helper"

class NodePriceCalculatorTest < ActiveSupport::TestCase
  attr_reader :subject
  
  setup do
    @subject = NodePriceCalculator.new
  end
  
  def test_calculates_price
    register_node_price_calculator_url
    
    assert_equal 20, subject.calculate_price
  end
end

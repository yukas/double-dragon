require "test_helper"

class TagPriceCalculatorTest < ActiveSupport::TestCase
  attr_reader :subject
  
  setup do
    @subject = TagPriceCalculator.new
  end
  
  def test_calculates_price
    register_tag_price_calculator_url
    
    assert_equal 10, subject.calculate_price
  end
end

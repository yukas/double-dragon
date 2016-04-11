require "test_helper"

class LetterPriceCalculatorTest < ActiveSupport::TestCase
  attr_reader :subject
  
  setup do
    @subject = LetterPriceCalculator.new
  end
  
  def test_calculates_price
    register_letter_price_calculator_url
    
    assert_equal 10, subject.calculate_price
  end
end

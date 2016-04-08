require "test_helper"

class LetterPanelProviderTest < ActiveSupport::TestCase
  attr_reader :subject
  
  setup do
    @subject = LetterPanelProvider.new
  end
  
  def test_calculates_price
    assert_equal 10, subject.calculate_price
  end
end

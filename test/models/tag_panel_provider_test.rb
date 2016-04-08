require "test_helper"

class TagPanelProviderTest < ActiveSupport::TestCase
  attr_reader :subject
  
  setup do
    @subject = TagPanelProvider.new
  end
  
  def test_calculates_price
    register_tag_panel_url
    
    assert_equal 10, subject.calculate_price
  end
end

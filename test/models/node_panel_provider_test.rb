require "test_helper"

class NodePanelProviderTest < ActiveSupport::TestCase
  attr_reader :subject
  
  setup do
    @subject = NodePanelProvider.new
  end
  
  def test_calculates_price
    register_node_panel_url
    
    assert_equal 20, subject.calculate_price
  end
end

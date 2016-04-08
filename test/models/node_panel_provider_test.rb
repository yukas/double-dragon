require "test_helper"

class NodePanelProviderTest < ActiveSupport::TestCase
  attr_reader :subject
  
  setup do
    @subject = NodePanelProvider.new
  end
  
  def test_calculates_price
    FakeWeb.register_uri(:get, NodePanelProvider::SITE_URL, body: "<html><body>#{'<p><a></a></p>' * 1000}<body></html>")
    
    assert_equal 20, subject.calculate_price
  end
end

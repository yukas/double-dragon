require "open-uri"

class NodePanelProvider < PanelProvider
  SITE_URL = "http://time.com"
  
  def calculate_price
    Nokogiri::HTML(open(SITE_URL).read).search("*").count / 100
  end
end

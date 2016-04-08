class LetterPanelProvider < PanelProvider
  SITE_URL = "http://time.com"
  
  def calculate_price
    Nokogiri::HTML(open(SITE_URL).read).at("body").text.count("a") / 100
  end
end

class TagPanelProvider < PanelProvider
  FEED_URL = "https://ajax.googleapis.com/ajax/services/feed/find?v=1.0&q=news"
  
  def calculate_price
    open(FEED_URL).read.scan("\\u003cb\\u003e").count
  end
end

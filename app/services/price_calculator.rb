class PriceCalculator
  def self.price_calculator_for(country)
    country.panel_provider.price_calculator_class_name.constantize.new
  end
end
class LocationFinder
  attr_reader :country_code
  attr_reader :locations
  
  def initialize(country_code)
    @country_code = country_code
  end
  
  def self.find_locations_json(country_code)
    finder = new(country_code)
    finder.find_locations
    
    finder.locations_json
  end
  
  def find_locations
    @locations = Location.by_country_code(country_code)
  end
  
  def locations_json
    locations.to_json
  end
end
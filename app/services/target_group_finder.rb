class TargetGroupFinder
  attr_reader :country_code
  attr_reader :target_groups
  
  def initialize(country_code)
    @country_code = country_code
  end
  
  def self.find_target_groups_json(country_code)
    finder = new(country_code)
    finder.find_target_groups
    
    finder.target_groups_json
  end
  
  def find_target_groups
    @target_groups = TargetGroup.by_country_code(country_code)
  end
  
  def target_groups_json
    target_groups.to_json
  end
end
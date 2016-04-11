Traver.factories do
  factory :location, {
    name: "Location ${n}"
  }
  
  factory :target_group, {
    parent: nil,
    name: "Target Group ${n}"
  }
  
  factory :target_group_level_1, :target_group, {
    children: [:target_group_level_2]
  }
  
  factory :target_group_level_2, :target_group, {
    children: [:target_group_level_3]
  }
  
  factory :target_group_level_3, :target_group, {
    children: [:target_group]
  }
  
  factory :panel_provider, {
    price_calculator_class_name: "LetterPriceCalculator"
  }
  
  factory :letter_panel_provider, :panel_provider, {
    price_calculator_class_name: "LetterPriceCalculator"
  }
  
  factory :tag_panel_provider, :panel_provider, {
    price_calculator_class_name: "TagPriceCalculator"
  }
  
  factory :node_panel_provider, :panel_provider, {
    price_calculator_class_name: "NodePriceCalculator"
  }
end
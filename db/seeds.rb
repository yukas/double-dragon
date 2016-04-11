Traver.create(country: {
  country_code:    "BY",
  panel_provider:  :letter_panel_provider,
  location_groups: [{ locations: 7 }],
  target_groups:   [:target_group_level_1]
})

Traver.create(country: {
  country_code:    "PL",
  panel_provider:  :tag_panel_provider,
  location_groups: [{ locations: 7 }],
  target_groups:   [:target_group_level_1]
})

Traver.create(country: {
  country_code:    "GB",
  panel_provider:  :node_panel_provider,
  location_groups: [2, { locations: 7 }],
  target_groups:   [2, :target_group_level_1]
})
Traver.create(country: {
  country_code:    "BY",
  panel_provider:  { type: "LetterPanelProvider" },
  location_groups: [{ locations: 7 }],
  target_groups:   [:target_group_level_1]
})

Traver.create(country: {
  country_code:    "PL",
  panel_provider:  { type: "TagPanelProvider" },
  location_groups: [{ locations: 7 }],
  target_groups:   [:target_group_level_1]
})

Traver.create(country: {
  country_code:    "GB",
  panel_provider:  { type: "NodePanelProvider" },
  location_groups: [2, { locations: 7 }],
  target_groups:   [2, :target_group_level_1]
})
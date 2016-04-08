Rails.application.routes.draw do
  namespace "api" do
    namespace "v1" do
      namespace "public" do
        get "locations/:country_code",     to: "locations#index", as: :locations
        get "target_groups/:country_code", to: "target_groups#index", as: :target_groups
      end
    end
  end
end

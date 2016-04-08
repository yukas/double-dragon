Rails.application.routes.draw do
  namespace "api" do
    namespace "v1" do
      namespace "public" do
        get "locations/:country_code", to: "locations#index", as: :locations
      end
    end
  end
end

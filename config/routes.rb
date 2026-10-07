Rails.application.routes.draw do
  get "pages/home"
  get "pages/about"
  get "up" => "rails/health#show", :as => :rails_health_check

  root "pages#home"

  get "/about", to: "pages#about"

  resources :articles do
    resources :blocks, only: %i[create update destroy]
  end
end

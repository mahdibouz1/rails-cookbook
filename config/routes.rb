Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "categories#index"
  resources :categories, except: [ :edit, :update, :destroy ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: [ :destroy ]
end

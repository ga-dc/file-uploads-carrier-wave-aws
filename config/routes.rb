Rails.application.routes.draw do
  root to: "images#index"
  resources :images
end

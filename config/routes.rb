Rails.application.routes.draw do
  devise_for :realtors
  resources :showings, only: [:new, :create]
end

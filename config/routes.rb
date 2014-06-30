require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root to: "sessions#new"

  constraints Monban::Constraints::SignedIn.new do
  end
  
end

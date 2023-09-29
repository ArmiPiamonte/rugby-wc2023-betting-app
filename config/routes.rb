Rails.application.routes.draw do
  devise_for :users

  root 'matches#index'
  resources :matches, only: %i[update] do
    resources :bets, only: %i[show new create update index]
  end
  resources :users do
    resources :leagues, only: %i[new create]
  end
end

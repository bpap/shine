Rails.application.routes.draw do
  devise_for :users

  root 'dashboard#index'

  namespace :api, defaults: { format: :json } do
    resources :customers, only: [:index, :show, :update]
  end

  get '/customers', to: 'customers#index'
end

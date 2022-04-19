Rails.application.routes.draw do
  devise_for :users
  root "events#index"
  resources :events
  get 'index', to: 'events#open_index'
end

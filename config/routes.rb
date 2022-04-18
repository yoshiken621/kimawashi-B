Rails.application.routes.draw do
  root "events#index"
  resources :events
  get 'index', to: 'events#open_index'
end

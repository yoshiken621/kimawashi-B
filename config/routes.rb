Rails.application.routes.draw do
  devise_for :users
  root "events#index"
  resources :events
  get 'index', to: 'events#event'
  get 'personal', to: 'events#personal'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end

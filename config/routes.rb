Rails.application.routes.draw do
  root "events#index"
  resources :events, only:[:new, :create, :edit, :index, :show, :update]
  get 'index', to: 'events#open_index'
end

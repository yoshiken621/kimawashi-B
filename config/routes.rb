Rails.application.routes.draw do
  root "events#index"
  resources :events, only:[:new, :create, :edit, :index]
end

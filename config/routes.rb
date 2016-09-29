Rails.application.routes.draw do
  mount_ember_app :frontend, to: "/"

  resources :items
  resources :pantries
  resources :users

  post 'sessions' => 'session#create'
  delete 'sessions/:id' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

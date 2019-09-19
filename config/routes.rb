Rails.application.routes.draw do
  get 'hello_world/index'
  get 'home/index'
  resources :room_messages
  resources :rooms
  devise_for :users
  resources :home, only: [:index, :new, :create]
  match '/contacts',  to: 'contacts#new', via:'get'
resources "contacts", only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root controller: :rooms, action: :index

  resources :room_messages
  resources :rooms
end

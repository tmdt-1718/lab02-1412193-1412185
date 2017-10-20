Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  }
  resources :listfriends
  get 'messages/sent', to: "messages#sent"
  resources :messages
  resources :friendrequests
  get 'friendrequestcontroller/refresh_part', to: "friendrequests#refresh_part"
  post 'friendrequestcontroller/update_status', to: "friendrequests#update_status"

  root to: "homes#index"
end

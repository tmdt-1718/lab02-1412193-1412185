Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  }
  resources :listfriends
  resources :friendrequests
  get 'friendrequestcontroller/refresh_part', to: "friendrequests#refresh_part"
  root to: "homes#index"
end

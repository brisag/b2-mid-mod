Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :mechanics, only: [:index, :show]
  # get '/mechanics', to: 'mechanics#index'
  # get '/mechanics/:id', to: 'mechanics#show'
  resources :mechanics, only: [:index, :show]

  resources :mechanics do
    resources :rides, controller: "mechanic_rides", only: [:create]
  end
end

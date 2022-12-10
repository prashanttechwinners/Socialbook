Rails.application.routes.draw do
  # get 'user/index'
  devise_for :users,controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/404', to: 'errors#not_found'
  root to: "homes#index"
  resources :homes
  resources :profiles

  resources :posts do
    # resources :comments
  end
  
end
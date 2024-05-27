Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "books#index"
  
  resources :books, except: [ :index ]

  resources :read_runs do
    member do
      post :new
    end
  end

  resources :read_sessions do
    member do
      post :new
      post :edit
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end

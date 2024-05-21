Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  resources :books
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

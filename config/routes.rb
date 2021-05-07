Rails.application.routes.draw do
  get 'homes/index'
  get 'users/profile'
  resources :groups
  resources :outlays
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

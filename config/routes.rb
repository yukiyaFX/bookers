Rails.application.routes.draw do
  root to: "top#index" 
  devise_for :users
  resources :books
  resources :top, only:[:index]
  resources :about, only:[:index]
  resources :users, only:[:index,:show,:edit]

end

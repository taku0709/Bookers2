Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  resources :books
  resources :users
  resources :books, only: [:new, :create, :index, :show, :destroy]

  resources :users, only: [:edit, :show, :update]

end

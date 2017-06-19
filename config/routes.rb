Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'flats#index'

  resources :flats, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

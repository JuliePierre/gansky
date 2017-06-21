Rails.application.routes.draw do
  get 'flat_applications/new'

  get 'flat_applications/create'

  ActiveAdmin.routes(self)
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'flats#index'

  resources :flats, only: [:index, :show] do
    resources :user_applications, only: [:new, :create]
  end
end

Rails.application.routes.draw do
  devise_for :users
  get 'procedures/create'
  get 'procedures/new'
  get 'procedures/show'

  root to: "sessions#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :hospitals
  get 'procedures/create'
  get 'procedures/new'
  get 'procedures/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

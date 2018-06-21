Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  resources :procedures, only: [:new, :create, :show], param: :uuid

  root 'procedures#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

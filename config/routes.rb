Rails.application.routes.draw do
  resources :members, only: [:new, :create, :index]

#Casein routes
namespace :casein do
    resources :members
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

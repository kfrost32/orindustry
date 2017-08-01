Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'links/index'

  get 'links/new'

  resources :links
  root 'links#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

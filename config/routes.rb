Rails.application.routes.draw do
  get 'links/index'

  get 'links/new'

  resources :links
  root 'links#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

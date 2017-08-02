Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'links/index'

  get 'links/new'

  resources :links
  root 'links#index'


  resources :links do
    get :autocomplete_link_site, :on => :collection
  end

  get "/:page" => "pages#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

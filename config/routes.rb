Rails.application.routes.draw do
  get 'items/create'
  resources :lists do
    resources :items
  end
  # get 'site/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'lists#index'
end

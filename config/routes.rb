Rails.application.routes.draw do

  resources :posts, only: [:new, :show, :create, :edit, :update]
  patch 'posts/:id', to: 'posts#update'

  resources :destinations, only: [:show]

  resources :bloggers, only: [:new, :show, :create]
  # patch 'bloggers/:id', to: 'bloggers#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

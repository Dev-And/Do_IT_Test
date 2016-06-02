Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  get 'persons/profile'
  resources :shopping_carts, only: [:show] do
    put 'add/:product_id', to: 'shopping_carts#add', as: :add_to
    put 'remove/:product_id', to: 'shopping_carts#remove', as: :remove_from
  end
  resources :products do
    resources :comments
  end
  root 'products#welcome'


end

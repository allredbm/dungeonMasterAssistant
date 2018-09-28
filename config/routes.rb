Rails.application.routes.draw do
  root 'monsters#index'
  resources :books
  resources :monsters
  resources :monster_types
  resources :sub_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

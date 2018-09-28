Rails.application.routes.draw do
  resources :sub_types
  resources :monster_types
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

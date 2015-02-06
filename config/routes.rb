Rails.application.routes.draw do
  get 'users/new'

  root             'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'

  resources :users
end

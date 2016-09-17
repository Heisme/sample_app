Rails.application.routes.draw do
  get 'users/new'

  #get 'static_pages/home'
  root 'static_pages#home'
  #get 'static_pages/home'
  #get 'static_pages/help'
  get 'help' => 'static_pages#help'
  #get 'static_pages/about'
  get 'about'   => 'static_pages#about'
  #get 'static_pages/contact'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  resources :users #, path: :people

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

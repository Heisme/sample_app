Rails.application.routes.draw do
  get 'users/new'
  get 'session/new' #session_new_url

  root                 'static_pages#home'
  get     'help'    => 'static_pages#help'
  get     'about'   => 'static_pages#about'
  get     'contact' => 'static_pages#contact'
  get     'signup'  => 'users#new'

  get     'login'   => 'session#new'
  post    'login'   => 'session#create'
  delete  'logout'  => 'session#destroy'

  resources :users #, path: :people
  delete 'users/destroy' #session_new_url

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

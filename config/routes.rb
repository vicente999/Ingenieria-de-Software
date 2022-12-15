Rails.application.routes.draw do


  
  get 'historial/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'contacto/index'
  get 'contacto/new'
  get 'contacto/create'
  get 'equipo/new'
  get 'equipo/create'
  get 'equipo/index'
  ############# CREATE ##################
  get 'chats/new'
  post 'chats', to: 'chats#create'
  ############# READ ##################
  get 'chats/index'
  get 'chats/show'
  ############# UPDATE ##################
  get 'chats/edit'
  patch 'chats/update', to: 'chats#update', as: 'chats_update'
  ############# DELETE ##################
  delete 'chats/delete', to:'chats#delete', as: 'chats_delete'
  get "/chats", to: "chats#index"


  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks'
  }, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up:'register'}
  get 'users/index'
  get 'users/show'
  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
 end
  ############# ROOT ##################
  root to: 'articles#index'

  ### DELETE USER - ADMIN ##############
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user


  ############# REQUESTS ################
  ############# CREATE ##################
  get 'requests/new'
  post 'requests', to: 'requests#create'
  ############# READ ##################
  get 'requests/index'
  get 'requests/show'
  ############# UPDATE ##################
  get 'requests/edit'
  patch 'requests/update', to: 'requests#update', as: 'requests_update'


  ############# DELETE ##################
  delete 'requests/delete', to:'requests#delete', as: 'requests_delete'
  get "/articles", to: "articles#index"


  ############# PUBLICATIONS ##################


  ############# CREATE ##################
  get 'publications/new'
  post 'publications', to: 'publications#create' 

  ############# READ ##################
  get 'publications/index'
  get 'publications/show'


  ############# UPDATE ##################
  get 'publications/edit'
  patch 'publications/update', to: 'publications#update', as: 'publications_update' 


  ############# DELETE ##################
  delete 'publications/delete', to:'publications#delete', as: 'publications_delete'
  get "/articles", to: "articles#index"
  #####################################################################################################################
  ############# REVIEW ##################
    ############# CREATE ##################
  get 'resenas/new'
  post 'resenas', to: 'resenas#create'

    ############# READ ##################
  get 'resenas/index'
  get 'resenas/show'

  ############# UPDATE ##################
  get 'resenas/edit'
  patch 'resenas/update', to: 'resenas#update', as: 'resenas_update'


  ############# DELETE ##################
  delete 'resenas/delete', to:'resenas#delete', as: 'resenas_delete'
  get "/articles", to: "articles#index"

########## ASOCIACIONES ##############
  resources :requests

  get 'contacts/index', as: "contacts_index"

end




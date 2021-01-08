Rails.application.routes.draw do

root 'principal#index' #Pagina principal
get "/articulos" => "articulos#index", as: "articulos_ver"  #Pagina de los articulos
get "/sobre" => "sobre#index", as: "sobre_ver"  #Pagina sobre la institucion
get "/programas" => "programas#index", as: "programas_ver"  #Pagina de los programas que ofrece la institucion
get "/usuarios" => "users#index", as: "usuarios_ver"  #Pagina de los usuarios

devise_scope :user do
	get "/ingresar" => "devise/sessions#new", as: "new_session_user" #Pagina de Login
    #get "/registrar" => "devise/registrations#new", as: "new_user_registration" #Pagina de Registro
    get "registrar", to: "registro#new"
    get "usuarios", to: "users#create"
    get '/editar' => 'devise/registrations#edit', as: "edit_user_registration" #Pagina para editar usuario
    end

devise_for :users, :controllers => { :registrations => 'registro'}
match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :articulos
  resources :users
end

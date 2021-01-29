Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#home'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'guardians#new', as: 'new_guardian'
  post '/signup', to: 'guardians#create'

  get '/families/:id', to: 'families#show', as: 'family' # main page
  get '/families/:id/settings', to: 'families#settings', as: 'family_settings' #Settings menu options page
  
  get '/families/:id/lists', to: 'lists#index', as: 'lists' #Family's lists w/ ~5 items
  get '/families/:id/lists/new', to: 'lists#new', as: 'new_list' #Create new list
  get '/families/:id/lists/:list_id', to: 'lists#show', as: 'list' #Show full list w/ buttons
  post '/families/:id/lists', to: 'lists#create' 
  delete '/families/:id/lists', to: 'lists#destroy', as: 'delete_list'
  
  get '/families/:id/add_guardian', to: 'guardians#add_to_family', as: 'add_guardian' #Add guardian to current family
  post '/families/:id/add_guardian', to: 'guardians#save_to_family'
  get '/families/:id/edit', to: 'guardians#edit', as: 'edit_guardian' #Change account settings page
  patch '/families/:id/add_guardian', to: 'guardians#update' #Change Account settings
  delete '/families/:id/guardian/:guardian_id', to: 'guardians#destroy', as: 'delete_guardian'
  
  post '/listItems', to: 'list_items#create' #Adding List items
  patch '/listItems/:id', to: 'list_items#complete', as: 'complete_item' # Mark as done button
  delete '/listItems/:id', to: 'list_items#destroy', as: 'delete_item'

  get '/families/:id/children/new', to: 'children#new', as: 'new_child'
  post '/families/:id/children/new', to: 'children#create'
  get '/families/:id/children/:child_id', to: 'children#edit', as: 'edit_child'
  patch '/families/:id/children/:child_id', to: 'children#update'
  delete '/families/:id/children/:child_id', to: 'children#destroy', as: 'delete_child'

  get '/families/:id/members', to: 'families#members', as: 'family_members'

  get '/families/:id/photos', to: 'photos#index', as: 'photos'
  post '/families/:id/photos', to: 'photos#create'

  get 'families/:id/photos/:photo_id', to: 'photos#show', as: 'photo'
  patch 'families/:id/photos/:photo_id', to: 'photos#update'
  delete 'families/:id/photos/:photo_id', to: 'photos#destroy'


end

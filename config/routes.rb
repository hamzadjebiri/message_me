Rails.application.routes.draw do

  root 'chatroom#index'
  
  #Session
  get  'login' , to:'session#new'
  post 'login', to:'session#create'
  delete 'logout',to:'session#destroy'
  
  # User
  get 'signup' , to:'users#new'
  resources :users , except: [:new]

  #Message
  post 'message', to: 'messages#create'

end

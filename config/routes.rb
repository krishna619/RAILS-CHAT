Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'message', to: 'messages#create'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  post 'signup', to: 'users#create'
  mount ActionCable.server, at: '/cable'
end














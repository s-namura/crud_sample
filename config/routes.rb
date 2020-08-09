Rails.application.routes.draw do
  # 以下のルーティングを定義
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit'
  
  # 以下のルーティングを追加
  patch '/users/:id', to: 'users#update'

  delete '/users/:id', to: 'users#destroy'
end

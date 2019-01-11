Rails.application.routes.draw do

get 'miniapp/:user_id/blogs/new' => 'blogs#new'
post 'miniapp/:user_id/blogs' => 'blogs#create'

  devise_for :users
  root 'miniapp#index'
  get 'miniapp' => 'miniapp#index'
  get 'miniapp/new' => 'miniapp#new'
  post 'miniapp' => 'miniapp#create'
  delete 'miniapp/:id' => 'miniapp#destroy'
  patch 'miniapp/:id' => 'miniapp#update'
  get 'miniapp/:id/edit' => 'miniapp#edit'
end

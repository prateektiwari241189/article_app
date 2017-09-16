Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'user#new'

   post 'user/create'
   get 'user/list'
   get 'user/show'
   get 'user/new'
   get 'user/edit'
   get 'user/update'
end

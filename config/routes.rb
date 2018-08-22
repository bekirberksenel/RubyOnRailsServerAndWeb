Rails.application.routes.draw do
   get 'appointment/list'
   get 'appointment/new'
   post 'appointment/create'
   patch 'appointment/update'
   get 'appointment/list'
   get 'appointment/show'
   get 'appointment/edit'
   get 'appointment/delete'
   get 'appointment/update'
   get 'appointment/listp'
   
   root 'appointment#list'
end

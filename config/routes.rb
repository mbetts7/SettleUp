SettleUp::Application.routes.draw do
  
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  
  root 'users#index'

  resources :users, :contacts, :ious

end


# Prefix Verb   URI Pattern                  Controller#Action
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     contacts GET    /contacts(.:format)          contacts#index
#              POST   /contacts(.:format)          contacts#create
#  new_contact GET    /contacts/new(.:format)      contacts#new
# edit_contact GET    /contacts/:id/edit(.:format) contacts#edit
#      contact GET    /contacts/:id(.:format)      contacts#show
#              PATCH  /contacts/:id(.:format)      contacts#update
#              PUT    /contacts/:id(.:format)      contacts#update
#              DELETE /contacts/:id(.:format)      contacts#destroy
#         ious GET    /ious(.:format)              ious#index
#              POST   /ious(.:format)              ious#create
#      new_iou GET    /ious/new(.:format)          ious#new
#     edit_iou GET    /ious/:id/edit(.:format)     ious#edit
#          iou GET    /ious/:id(.:format)          ious#show
#              PATCH  /ious/:id(.:format)          ious#update
#              PUT    /ious/:id(.:format)          ious#update
#              DELETE /ious/:id(.:format)          ious#destroy

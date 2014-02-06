SettleUp::Application.routes.draw do
  
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  
  root 'users#index'

  resources :users, :contacts, :ious

  patch 'ious/:id/status', to: 'ious#status_change'

end


#  Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/login(.:format)         devise/sessions#new
#             user_session POST   /users/login(.:format)         devise/sessions#create
#     destroy_user_session DELETE /users/logout(.:format)        devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              users#index
#                    users GET    /users(.:format)               users#index
#                          POST   /users(.:format)               users#create
#                 new_user GET    /users/new(.:format)           users#new
#                edit_user GET    /users/:id/edit(.:format)      users#edit
#                     user GET    /users/:id(.:format)           users#show
#                          PATCH  /users/:id(.:format)           users#update
#                          PUT    /users/:id(.:format)           users#update
#                          DELETE /users/:id(.:format)           users#destroy
#                 contacts GET    /contacts(.:format)            contacts#index
#                          POST   /contacts(.:format)            contacts#create
#              new_contact GET    /contacts/new(.:format)        contacts#new
#             edit_contact GET    /contacts/:id/edit(.:format)   contacts#edit
#                  contact GET    /contacts/:id(.:format)        contacts#show
#                          PATCH  /contacts/:id(.:format)        contacts#update
#                          PUT    /contacts/:id(.:format)        contacts#update
#                          DELETE /contacts/:id(.:format)        contacts#destroy
#                     ious GET    /ious(.:format)                ious#index
#                          POST   /ious(.:format)                ious#create
#                  new_iou GET    /ious/new(.:format)            ious#new
#                 edit_iou GET    /ious/:id/edit(.:format)       ious#edit
#                      iou GET    /ious/:id(.:format)            ious#show
#                          PATCH  /ious/:id(.:format)            ious#update
#                          PUT    /ious/:id(.:format)            ious#update
#                          DELETE /ious/:id(.:format)            ious#destroy
#                          PATCH  /ious/:id/status(.:format)     ious#status_change
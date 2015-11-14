Rails.application.routes.draw do

resources :stash
#     Prefix Verb   URI Pattern               Controller#Action
#stash_index GET    /stash(.:format)          stash#index
#            POST   /stash(.:format)          stash#create
#  new_stash GET    /stash/new(.:format)      stash#new
# edit_stash GET    /stash/:id/edit(.:format) stash#edit
#      stash GET    /stash/:id(.:format)      stash#show
#            PATCH  /stash/:id(.:format)      stash#update
#            PUT    /stash/:id(.:format)      stash#update
#            DELETE /stash/:id(.:format)      stash#destroy

#game routes
get "game/puzzle/:id" , to: "game#index"
post "game/puzzle/:id" , to: "game#save"
#            GET    /game/puzzle/:id(.:format) game#index
#            POST   /game/puzzle/:id(.:format) game#save
end

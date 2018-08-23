Rails.application.routes.draw do

  get 'album/index'
  
  get 'album/new',      to: "album#create", as: "new_album"
  get 'album/:id/edit', to: "album#edit",   as: "album_edit"
  get 'album/delete'
  patch 'album/:id', to: "album#update", as: "album_update"
  get 'album/:id', to: "album#show", as: "album"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'album#index'
end

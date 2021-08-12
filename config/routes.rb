Rails.application.routes.draw do
  get '/pessoas', to: 'pessoa#index'
  get '/pessoas/new', to: 'pessoa#new'
  post '/pessoas/new', to: 'pessoa#create'
  get '/pessoas/:id', to:'pessoa#show', as: 'pessoa_show'
  get '/pessoas/:id/edit', to: 'pessoa#edit', as: 'pessoa_edit'
  put '/pessoas/:id/edit', to: 'pessoa#update', as: 'pessoa_update'
end

Rails.application.routes.draw do

  resources :status
  namespace :v2 do
    resources :pessoas
  end

  get '/pessoas', to: 'pessoa#index'
  get '/pessoas/new', to: 'pessoa#new'
  post '/pessoas/new', to: 'pessoa#create'
  get '/pessoas/:id', to:'pessoa#show', as: 'pessoa_show'
  get '/pessoas/:id/edit', to: 'pessoa#edit', as: 'pessoa_edit'
  post '/pessoas/:id/edit', to: 'pessoa#update', as: 'pessoa_update'
  delete '/pessoas/:id/delete', to: 'pessoa#destroy', as: 'pessoa_delete'
end

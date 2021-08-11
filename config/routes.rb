Rails.application.routes.draw do
  get '/pessoas', to: 'pessoa#index'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {fomat: :json}, path: '/' do
    get '/contacts', to: 'contacts#index'
    put '/contacts', to: 'contacts#create'
    get '/contacts/:id', to: 'contacts#show'
    put '/contacts/:id', to: 'contacts#update'
    delete '/contacts/:id', to: 'contacts#destroy'
  end
end

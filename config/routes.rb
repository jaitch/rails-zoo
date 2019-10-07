Rails.application.routes.draw do
  get '/animals', to: 'animals#index', as: :animals
  get '/animals/:id', to: 'animals#show', as: :animal
  get '/animals/new', to: 'animals#new'
  patch '/animals/', to: 'animals#update'
end

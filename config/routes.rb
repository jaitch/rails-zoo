Rails.application.routes.draw do
  get '/animals', to: 'animals#index', as: :animals
  get '/animals/new', to: 'animals#new', as: :new_animal
  get '/animals/:id', to: 'animals#show', as: :animal
  post '/animals', to: 'animals#create'
end
  # patch '/animals/', to: 'animals#update', as: :new_animal


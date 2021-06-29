# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/api/pokemon/:name', to: 'api/pokemons#show', as: :api_pokemon
end

require 'rest-client'

class PokeapiService
  def pokemon(name)
    RestClient.get "https://pokeapi.co/api/v2/pokemon/#{name}"
  end
end
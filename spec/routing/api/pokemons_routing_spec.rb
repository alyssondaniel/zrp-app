# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::PokemonsController, type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: '/api/pokemon/pikachu').to route_to('api/pokemons#show', name: 'pikachu')
    end
  end
end

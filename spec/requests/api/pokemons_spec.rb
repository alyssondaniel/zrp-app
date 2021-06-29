# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/api/pokemons', type: :request do

  describe 'GET /show' do

    it 'renders a successful response' do
      get api_pokemon_url('pikachu'), as: :json
      expect(response).to be_successful
    end
  end
end

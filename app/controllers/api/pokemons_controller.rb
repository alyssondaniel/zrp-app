# frozen_string_literal: true

module Api
  # Class PokemonsController
  class PokemonsController < ApplicationController
    before_action :set_pokemon, only: :show

    def show
      render json: format_pokemon
    end

    private

    def format_pokemon
      return unless @pokemon

      JSON.parse(@pokemon)['abilities'].map { |obj| obj['ability']['name'] }.sort
    end

    def set_pokemon
      @pokemon = PokeapiService.new.pokemon params[:name]
    rescue StandardError => e
      render json: { error: e.message }
    end
  end
end

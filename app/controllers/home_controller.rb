require 'steam/wrapper/user'

class HomeController < ApplicationController
  def index
    @owned_games = owned_games
  end

  private

  def client
    @client ||= Steam::Wrapper::User.new(ENV['STEAM_API_KEY'])
  end

  def owned_games
    client.get_owned_games(current_user.steam_id)
  end
end

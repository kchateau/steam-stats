require 'steam/wrapper/user'

class HomeController < ApplicationController
  def index
    @owned_games = owned_games
    @user_stats = user_stats
    @owned_games_sorted = owned_games.sort_by { |game| [-game.playtime_forever] }
  end

  private

  def client
    @client ||= Steam::Wrapper::User.new(ENV['STEAM_API_KEY'])
  end

  def owned_games
    client.get_owned_games(current_user.steam_id)
  end

  def user_stats
    client.get_player_summaries([ current_user.steam_id ])
  end
end

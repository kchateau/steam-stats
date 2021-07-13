require 'steam/wrapper/user'

class HomeController < ApplicationController
  def index
    @owned_games = owned_games
    @user_stats = user_stats
    @played_games = owned_games.select { |game| game.playtime_forever > 0 }
    @played_games_sorted = @played_games.sort_by { |game| [-game.playtime_forever] }
    @recently_played_games = recently_played_games
    @friends = friends
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

  def recently_played_games
    client.get_recently_played_games(current_user.steam_id)
  end

  def friends
    client.get_friend_list(current_user.steam_id)
  end
end

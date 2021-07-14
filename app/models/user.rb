class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :create_steam_user

  private 

  def create_steam_user
    SteamUser.create(steam_id: self.steam_id)
  end
end

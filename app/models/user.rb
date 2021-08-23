class User < ApplicationRecord
  validates :name, presence: true
  has_many :reviews, dependent: :destroy
  has_many :favorite_facilities, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def self.guest
    find_or_create_by!(email: 'guestguest@email.com') do |guest|
      guest.name = 'ゲストユーザー'
      guest.password = 'password'
      guest.password_confirmation = 'password'
      guest.confirmed_at = Time.now
      guest.admin = false
    end
  end

  def self.admin_guest
    find_or_create_by!(email: 'adminadmin@email.com') do |admin|
      admin.name = 'ゲスト管理者'
      admin.password = 'password'
      admin.password_confirmation = 'password'
      admin.confirmed_at = Time.now
      admin.admin = true
    end
  end
end

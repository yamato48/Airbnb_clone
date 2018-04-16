class User < ApplicationRecord
  # アソシエーション部分
  has_many :hosts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable a
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable

  enum sex: [:male, :female, :other]
  enum language: [:english, :mandarinchinese, :cantonchinese, :spanish, :russian, :italian, :french, :german, :portusuese, :arabic, :turkish, :vietnamese, :hindi, :malay, :thai, :korean, :japanese, :dutch, :norwegian, :swedish, :danish]
  enum currency: [:usd, :aud, :cad, :gbp, :cny, :eur, :rub, :vnd, :inr, :myr, :thb, :krw, :jpy, :sek, :dkk]
end

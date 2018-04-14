class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable a
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  enum sex: [:male, :female, :other]
  enum language: [:english, :japanese, :chinese]
  enum currency: [:doller, :yen, :pond]

end

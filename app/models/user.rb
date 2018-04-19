class User < ApplicationRecord
  # アソシエーション部分
  has_many :hosts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable a
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :timeoutable

  # has_attached_file :avatar,
  #                     styles: { medium: "", thumb: "" }
  # validates_attachment_content_type :avatar,
  #                                     content_type: ["image/jpg","image/jpeg","image/png"]
  validates :birth_day, presence: true
  validates :last_name, :first_name,
    length: { minimum: 1, maximum: 10 } ,presence: true  
  
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, presence: true
  before_validation :remove_spaces  
   # numericality: { only_integer: true }
  private

  def remove_spaces
    email.strip!
  end

  enum sex: [:male, :female, :other]
  enum language: [:english, :mandarinchinese, :cantonchinese, :spanish, :russian, :italian, :french, :german, :portusuese, :arabic, :turkish, :vietnamese, :hindi, :malay, :thai, :korean, :japanese, :dutch, :norwegian, :swedish, :danish]
  enum currency: [:usd, :aud, :cad, :gbp, :cny, :eur, :rub, :vnd, :inr, :myr, :thb, :krw, :jpy, :sek, :dkk]
end





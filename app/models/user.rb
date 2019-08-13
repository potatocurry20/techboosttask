class User < ApplicationRecord
  #名前は１５文字以上
  validates :name, presence: true, length: {maximum: 15}
  
  #「~ @ ~ . ~」の形を許可
  VALID_EMAIL_REGEX = /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/ 
  validates :email, presence: true, uniqueness: true, format: {with: VALID_EMAIL_REGEX }
  
  has_secure_password
  VALID_PASWAD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
  validates :password, presence: true, length: {in: 8..32}, format: {with: VALID_PASWAD_REGEX}
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  has_many :comments
  
end

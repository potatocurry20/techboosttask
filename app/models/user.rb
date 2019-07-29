class User < ApplicationRecord
  #名前は１５文字以上
  validates :name, presence: true, length: {maximum: 15}
  
  #「~ @ ~ . ~」の形を許可
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX }
  
　#文字数を8~32文字のみ
　#少なくともアルファベットと数字はそれぞれ1文字以上含まないといけない
　has_secure_password
　VALID_PASWAD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
　validates :password, presence: true, uniqueness: true, length: {in: 8..32}, format: {with: VALID_PASWAD_REGEX}
  
end

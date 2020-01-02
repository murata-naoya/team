class Enduser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  attachment :profile_image
  acts_as_paranoid

  has_many :carts, dependent: :destroy
  
  # def full_name(user)
  #   user.last_name_characters + user.first_name_characters
  # end
end

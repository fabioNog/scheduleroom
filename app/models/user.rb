class User < ApplicationRecord
  has_many :reserves, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :confirmable,
         :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable,                   
         :trackable
         :validatable
end

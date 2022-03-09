class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one_attached :image
 
  
                 
  
  validates :introduction, length: { maximum: 50 }

         
  has_many :books, dependent: :destroy
  

  


end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
           validates_uniqueness_of :email
           validates :username, presence: true
           # mount_uploader :image, ImageUploader
             has_many :comments
              has_many :lectures
              has_many :courses



end

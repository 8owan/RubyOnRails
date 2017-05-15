class Lecture < ActiveRecord::Base
	belongs_to :Course
	acts_as_votable
	has_many :comments
	validates :contents, presence: true
	validates :attachments, presence: true
	   belongs_to :User
	   mount_uploader :attachments, AvatarUploader
  		

end

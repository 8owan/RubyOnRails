class Comment < ActiveRecord::Base
  belongs_to :Lecture
   belongs_to :User

end

module Twitter
  class Follow < ActiveRecord::Base
    
   belongs_to :user
   validates :user_id, :presence => true, :uniqueness => {:scope => :following_id}   # composite key of user_id + following_id

   belongs_to :following , :class_name => "::User", :foreign_key => "following_id"     
   attr_accessible :user_id, :following_id
  end
end

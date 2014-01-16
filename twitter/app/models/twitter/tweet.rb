module Twitter
  class Tweet < ActiveRecord::Base


    belongs_to :user, class_name: "::User"
    validates_length_of :content , :minimum => 1 , :maximum => 1000 , :message => "Tweet too long..."
    default_scope -> { order('created_at DESC') }
    attr_accessible :user_id , :content
    private

  end
end

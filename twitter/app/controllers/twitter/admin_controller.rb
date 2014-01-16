module Twitter
  class AdminController < ApplicationController
  	def index
  		#puts "*"*1000
  	    @id = current_user.id

  # ids of users I am following
  #@follow_id=Admin.where(id: (Follow.joins("JOIN tweets ON tweets.admin_id=follows.admin_id AND follows.admin_id = #@id ").pluck('following_id'))).pluck('id')
  @follow_id=Twitter::Follow.joins("JOIN users ON users.id=twitter_follows.user_id AND twitter_follows.user_id= #@id").pluck('following_id')
  # all ids for which tweets are to be found
  @id_all= @follow_id + [@id.to_i]
  #All the tweets to be displayed on homepage
  @tweet_all = Twitter::Tweet.where(:user_id => @id_all)
  @users= ::User.find(:all, :conditions => ['id not in (?)', @id ])
  	end	


  def post_tweet
  @id = current_user.id

  @content = params[:tweet]
  @error=false
  @tweet=Twitter::Tweet.create(user_id: @id , content: @content)

    if (!(@tweet.valid?)) 
       @error=true
    end

   redirect_to root_path(:error => @error)

  end
end
end

module Twitter
	class ProfileController < ApplicationController

		def show
		 @id=params[:id]         
		 @email=::User.find_by_id(@id)
		 @tweets=Twitter::Tweet.find_all_by_user_id(@id)
		 @current= current_user.id
		 puts "*"*1000
		 puts @current
		 @id_int= @id.to_i
		 @same_user= (@current == @id_int)
		 puts @same_user
		 @flag=Twitter::Follow.where(:user_id => @current  , :following_id =>  @id)
		end

		def follow_me
		 @current=current_user.id

		 puts @current
		 @id=params[:id]
		 
		 @follow=Twitter::Follow.create(:user_id => @current  , :following_id =>  @id)

		# redirect_to action: ' profile_path(:id'=> @current) 
		 redirect_to profile_path(:id => @id)

		end

		def unfollow_me
		 @current=current_user.id
		 @id=params[:id]
		 @unfollow=Follow.where(:user_id => @current , :following_id => @id).destroy_all
		 redirect_to root_path
		end


	end
end
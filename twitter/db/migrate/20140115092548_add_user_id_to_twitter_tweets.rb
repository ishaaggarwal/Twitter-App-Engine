class AddUserIdToTwitterTweets < ActiveRecord::Migration
  def change
    add_column :twitter_tweets, :user_id, :integer
  end
end

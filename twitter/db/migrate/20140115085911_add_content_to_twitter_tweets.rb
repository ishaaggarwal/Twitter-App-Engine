class AddContentToTwitterTweets < ActiveRecord::Migration
  def change
    add_column :twitter_tweets, :content, :string
  end
end

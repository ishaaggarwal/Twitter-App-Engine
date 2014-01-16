class RemoveAdminIdFromTwitterTweets < ActiveRecord::Migration
  def up
    remove_column :twitter_tweets, :admin_id
  end

  def down
    add_column :twitter_tweets, :admin_id, :integer
  end
end

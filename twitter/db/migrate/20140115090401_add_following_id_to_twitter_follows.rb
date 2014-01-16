class AddFollowingIdToTwitterFollows < ActiveRecord::Migration
  def change
    add_column :twitter_follows, :following_id, :integer
  end
end

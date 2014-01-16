class AddAdminIdToTwitterFollows < ActiveRecord::Migration
  def change
    add_column :twitter_follows, :admin_id, :integer
  end
end

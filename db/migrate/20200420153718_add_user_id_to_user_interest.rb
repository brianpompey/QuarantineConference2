class AddUserIdToUserInterest < ActiveRecord::Migration[6.0]
  def change
    add_column :user_interests, :user_id, :integer
  end
end

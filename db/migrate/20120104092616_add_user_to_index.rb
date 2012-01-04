class AddUserToIndex < ActiveRecord::Migration
  def change
    add_column :indices, :user_id, :integer
  end
end

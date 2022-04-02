class AddUserIdToBlog1s < ActiveRecord::Migration[7.0]
  def change
    add_column :blog1s, :user_id, :integer
    add_index :blog1s, :user_id
  end
end

class AddUsertypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :boolean, default: false
  end
end

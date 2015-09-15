class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :last_name
  end
end

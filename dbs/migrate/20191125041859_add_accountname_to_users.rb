class AddAccountnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :accountname, :string
  end
end

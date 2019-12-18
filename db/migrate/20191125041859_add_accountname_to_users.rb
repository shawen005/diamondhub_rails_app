class AddAccountnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :accountname, :string
  end
end

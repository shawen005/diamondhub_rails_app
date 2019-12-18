class AddAccountnumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :accountnumber, :integer
  end
end

class AddAccountnumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :accountnumber, :integer
  end
end

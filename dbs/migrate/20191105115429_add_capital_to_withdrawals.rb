class AddCapitalToWithdrawals < ActiveRecord::Migration[5.2]
  def change
    add_column :withdrawals, :capital, :integer
  end
end

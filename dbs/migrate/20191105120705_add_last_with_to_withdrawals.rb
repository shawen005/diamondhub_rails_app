class AddLastWithToWithdrawals < ActiveRecord::Migration[5.2]
  def change
    add_column :withdrawals, :last_with, :date
  end
end

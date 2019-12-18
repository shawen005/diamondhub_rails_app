class AddLastWdToWithdrawals < ActiveRecord::Migration[5.0]
  def change
    add_column :withdrawals, :last_wd, :date
  end
end

class AddLastWdToWithdrawals < ActiveRecord::Migration[5.2]
  def change
    add_column :withdrawals, :last_wd, :date
  end
end

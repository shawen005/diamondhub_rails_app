class AddInvestmentIdToWithdrawals < ActiveRecord::Migration[5.2]
  def change
    add_column :withdrawals, :investment_id, :integer
  end
end

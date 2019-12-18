class AddInvestmentIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :investment_id, :integer
  end
end

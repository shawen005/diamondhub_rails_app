class AddInvestmentIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :investment_id, :integer
  end
end

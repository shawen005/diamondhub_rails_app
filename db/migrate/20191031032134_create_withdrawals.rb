class CreateWithdrawals < ActiveRecord::Migration[5.0]
  def change
    create_table :withdrawals do |t|
      t.integer :user_id
      t.integer :invest_id
      t.string :Account
      t.integer :Amount
      t.decimal :charges
      t.decimal :payable
      t.date :w_date

      t.timestamps
    end
  end
end

class CreateInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :investments do |t|
      t.integer :user_id
      t.string :package
      t.integer :capital
      t.date :w_date
      t.integer :i_return
      t.date :last_wd
      t.date :next_w_date
      t.string :status
      t.string :img
      t.integer :daily
      t.string :mode
      t.string :s_date

      t.timestamps
    end
  end
end

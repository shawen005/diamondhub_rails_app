class CreateFilters < ActiveRecord::Migration[5.0]
  def change
    create_table :filters do |t|
      t.string :area
      t.string :status
      t.integer :min_price
      t.integer :max_price

      t.timestamps
    end
  end
end

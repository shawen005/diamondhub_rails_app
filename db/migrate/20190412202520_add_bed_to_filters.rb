class AddBedToFilters < ActiveRecord::Migration[5.0]
  def change
    add_column :filters, :bed, :integer
  end
end

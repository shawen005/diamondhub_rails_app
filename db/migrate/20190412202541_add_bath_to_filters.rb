class AddBathToFilters < ActiveRecord::Migration[5.0]
  def change
    add_column :filters, :bath, :integer
  end
end

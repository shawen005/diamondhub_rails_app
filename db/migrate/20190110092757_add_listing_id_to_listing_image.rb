class AddListingIdToListingImage < ActiveRecord::Migration[5.0]
  def change
    add_column :listing_images, :listing_id, :integer
  end
end

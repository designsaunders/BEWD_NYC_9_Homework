class AddImageToShirts1 < ActiveRecord::Migration
  def change
    add_column :shirts1s, :image, :string
  end
end

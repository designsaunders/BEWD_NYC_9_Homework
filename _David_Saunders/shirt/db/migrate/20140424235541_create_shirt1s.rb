class CreateShirt1s < ActiveRecord::Migration
  def change
    create_table :shirt1s do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :string
      t.integer :age

      t.timestamps
    end
  end
end

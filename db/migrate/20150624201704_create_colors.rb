class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.string :hex_value
      t.string :category

      t.timestamps null: false
    end
  end
end

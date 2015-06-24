class CreateColorsUsers < ActiveRecord::Migration
  def change
    create_join_table :colors, :users
  end
end

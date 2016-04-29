class CreateUserUnits < ActiveRecord::Migration
  def change
    create_table :user_units do |t|
      t.integer :user_id
      t.integer :unit_id
      t.integer :complete
      t.text :coment
      t.integer :losingunit

      t.timestamps null: false
    end
  end
end

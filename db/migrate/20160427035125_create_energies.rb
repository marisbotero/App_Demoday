class CreateEnergies < ActiveRecord::Migration
  def change
    create_table :energies do |t|
      t.text :content
      t.text :description
      t.string :name
      t.string :intensity

      t.timestamps null: false
    end
  end
end

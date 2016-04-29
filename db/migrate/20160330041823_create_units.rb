class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.text :description
      t.string :name
      t.integer :course_id
      t.text :content
      t.text :simulator
      t.string :answer

      t.timestamps null: false
    end
  end
end

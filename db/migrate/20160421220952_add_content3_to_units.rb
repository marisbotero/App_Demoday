class AddContent3ToUnits < ActiveRecord::Migration
  def change
    add_column :units, :content3, :text
  end
end

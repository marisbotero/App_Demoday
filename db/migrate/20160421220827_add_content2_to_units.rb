class AddContent2ToUnits < ActiveRecord::Migration
  def change
    add_column :units, :content2, :text
  end
end

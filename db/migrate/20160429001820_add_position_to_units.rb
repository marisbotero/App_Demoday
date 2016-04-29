class AddPositionToUnits < ActiveRecord::Migration
  def change
    add_column :units, :Position, :integer
  end
end

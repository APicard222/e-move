class RenameColumnPriceInVehicle < ActiveRecord::Migration[6.0]
  def change
    rename_column :vehicles, :preice, :price
  end
end

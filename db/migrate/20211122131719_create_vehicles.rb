class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :title
      t.string :description
      t.integer :preice
      t.decimal :avg_rating
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

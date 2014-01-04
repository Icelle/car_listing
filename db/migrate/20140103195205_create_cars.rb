class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :color
      t.integer :year
      t.decimal :mileage
      t.text :description

      t.timestamps
    end
  end
end

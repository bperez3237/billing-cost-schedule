class CreateCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :costs do |t|
      t.string :cost_code
      t.string :name
      t.float :quantity
      t.string :unit_of_measure
      t.float :manhours
      t.float :forecast
      t.float :spent_to_date
      t.float :quantity_to_date
      t.float :manhours_to_date
      t.string :cost_category

    end
  end
end

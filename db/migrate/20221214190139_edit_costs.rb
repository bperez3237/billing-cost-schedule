class EditCosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :costs, :cost_category, :cost_category_1
    add_column :costs, :cost_category_2, :string
  end
end

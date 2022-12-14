class CreateSubcontractors < ActiveRecord::Migration[7.0]
  def change
    create_table :subcontractors do |t|
      t.string :name
    end
  end
end

class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.integer :activity_code
      t.string :name
      t.string :type
      t.float :percent_complete
      t.integer :subcontractor_id
      t.integer :location_id
      t.integer :cost_id
      t.date :start_date
      t.date :end_date
      t.string :category_1
      t.string :category_2
      t.boolean :completed
      
    end
  end
end

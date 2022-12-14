class CreateCostSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :cost_schedules do |t|
      t.integer :cost_id
      t.string :schedule_type
      t.float :previous_cost
      t.float :december
      t.float :january
      t.float :february
      t.float :march
      t.float :april
      t.float :may
      t.float :june
      t.float :july
      t.float :august
      t.float :september
      t.float :october

    end
  end
end

class CreateCheckInRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :check_in_records do |t|
      t.references :employee
      t.date :checked_in_date
      t.timestamp :checked_in_time

      t.timestamps
    end
  end
end

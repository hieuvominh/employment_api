class CreateCheckOutRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :check_out_records do |t|
      t.references :employee
      t.date :checked_out_date
      t.timestamp :checked_out_time

      t.timestamps
    end
  end
end

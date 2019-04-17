class AddColumnCheckedInDaysToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :checked_in_days, :string
  end
end

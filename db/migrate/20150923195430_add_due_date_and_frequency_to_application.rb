class AddDueDateAndFrequencyToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :due_date, :date
    add_column :applications, :frequency, :string
  end
end

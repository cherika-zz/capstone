class AddDueDateAndFrequencyToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :due_date, :datetime
    add_column :applications, :frequency, :string
  end
end

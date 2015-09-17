class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.references :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :applications, :states
  end
end

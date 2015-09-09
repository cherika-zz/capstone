class CreateRegs < ActiveRecord::Migration
  def change
    create_table :regs do |t|
      t.string :name
      t.references :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :regs, :states
  end
end

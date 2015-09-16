class AddAttachmentToRegs < ActiveRecord::Migration
  def change
    add_column :regs, :attachment, :string
  end
end

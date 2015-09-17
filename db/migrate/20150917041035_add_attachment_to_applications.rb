class AddAttachmentToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :attachment, :string
  end
end

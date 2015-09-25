class Application < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader

  def self.current_month
    where("strftime('%m', due_date) + 0 = ?", Date.today.month)
  end
end

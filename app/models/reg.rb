class Reg < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader
end

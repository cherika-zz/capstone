class Application < ActiveRecord::Base
  belongs_to :state
  mount_uploader :attachment, AttachmentUploader
end

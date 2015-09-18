class State < ActiveRecord::Base
  has_many :regs, dependent: :destroy
  has_many :applications
  belongs_to :user
end

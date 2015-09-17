class State < ActiveRecord::Base
  has_many :regs, dependent: :destroy
  has_many :applications
  # has_many :apps
end

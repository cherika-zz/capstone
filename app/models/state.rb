class State < ActiveRecord::Base
  has_many :regs
  has_many :apps
end

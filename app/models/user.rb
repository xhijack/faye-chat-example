  class User < ActiveRecord::Base
  attr_accessible :last_online_at, :name
  has_many :messages
  validates :name, presence: true
end

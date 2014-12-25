class Message < ActiveRecord::Base
  attr_accessible :message, :user_id, :user_target_id
  belongs_to :user
  belongs_to :user_target, class_name: 'User', foreign_key: 'user_target_id'
end

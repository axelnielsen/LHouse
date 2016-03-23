class Message < ActiveRecord::Base

  attr_accessible :user_id_from, :user_id_to, :message, :active, :viewed, :name
  belongs_to :user
  
end

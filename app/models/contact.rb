class Contact < ActiveRecord::Base

  validates :name, :email, :message, :presence => true

  attr_accessible :name, :message, :email
  
end
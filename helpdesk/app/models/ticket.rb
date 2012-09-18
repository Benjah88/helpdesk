class Ticket < ActiveRecord::Base
  attr_accessible :author, :category, :description, :os, :pcnr, :roomnr, :status, :telnr, :title
  
  
  has_many :statuses
  has_many :categories
  

end

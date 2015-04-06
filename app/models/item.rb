class Item < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  attr_accessible :
end

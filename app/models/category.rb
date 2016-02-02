class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :history
  
  has_many :skills
end

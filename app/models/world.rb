class World < ActiveRecord::Base
  has_many :stories
  has_many :articles
end

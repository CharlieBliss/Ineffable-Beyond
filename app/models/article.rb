class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_and_belongs_to_many :tags
  # has_and_belongs_to_many :contributors, class_name: :user

end



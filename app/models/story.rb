class Story < ActiveRecord::Base
belongs_to :author, class_name: "User"
belongs_to :world
has_many :articles
has_many :tags
has_and_belongs_to_many :contributors, class_name: :user

end


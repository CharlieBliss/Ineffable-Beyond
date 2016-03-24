class User < ActiveRecord::Base
has_secure_password
has_many :authored_stories, class_name: 'Story', foreign_key: :author_id
has_many :authored_articles, source: :author
has_and_belongs_to_many :contributed_stories, class_name: 'Story', foreign_key: :contributor_id


end

class Post < ActiveRecord::Base
  belongs_to :author, class_name: User
  belongs_to :owner, polymorphic: true
end
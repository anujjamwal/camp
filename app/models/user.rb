class User < ActiveRecord::Base
  has_many :wall_posts, class_name: Post, as: :owner, order: 'created_at desc'
end
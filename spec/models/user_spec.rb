require 'spec_helper'

describe User do
  it { should have_many(:wall_posts).class_name(Post).order('created_at desc') }
end
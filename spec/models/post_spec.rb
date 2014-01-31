require 'spec_helper'

describe Post do
  it { should belong_to(:owner) }
  it { should belong_to(:author).class_name(User) }
end
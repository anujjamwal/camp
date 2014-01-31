require 'spec_helper'

describe PostsController do
  context :create do

    before do
      @author = FactoryGirl.create(:user)
      @user = FactoryGirl.create(:user)
    end

    it 'should create post for user' do
      post :create, user_id: @user.id, post: { content: 'This is a Wall Post' }

      expect(response).to redirect_to(user_path(@user.id))
      post = @user.wall_posts.last
      expect(post.author).to eq(@author)
      expect(post.owner).to eq(@user)
    end
  end
end
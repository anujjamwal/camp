require 'spec_helper'

describe UsersController do
  context :show do

    before do
      @user = FactoryGirl.create(:user)
      @posts = [FactoryGirl.create(:post, owner: @user, author: @user)]
    end

    it 'should display the user wall' do
      get :show, id: @user.id

      expect(response).to be_success
      expect(response.status).to eq(200)
      expect(response).to render_template('show')
      expect(assigns(:user)).to eq(@user)
      expect(assigns(:wall_posts)).to match_array(@posts)
    end
  end
end
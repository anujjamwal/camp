require 'spec_helper'

describe 'User Wall Route' do
  it 'should route to user wall' do
    expect( get: 'users/user_id' ).to route_to(controller: 'users', action: 'show', id: 'user_id')
  end
end
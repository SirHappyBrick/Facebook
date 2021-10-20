require 'rails_helper'


describe CreaterUser do
  describe '#call' do
    it 'create user' do
      user = User.create!(email: 'guy@gmail.com', password: '111111', password_confirmation: '111111')
      params = { first_name:'Bob', last_name:'Marley', email: 'guy@gmail.com', phone: '420213769'}
      
      CreateFriend.new(user, params).call

      expect(Friend.count).to eq(1)
    end
  end
end
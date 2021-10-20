class CreateFriend
  def initialize(user, params)
    @user = user
    @params = params
  end

  def call

  end 

  private

  attr_accessor :user, :params
end 
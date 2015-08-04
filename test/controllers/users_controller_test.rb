require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "user show profile page" do
  	user = FactoryGirl.create(:user)
  	sign_in user  #why do I need this? Without this is still returns successful with assertion.
  	get :show, :id => user.id
  	assert_response :success
  end
end

require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "Comment created" do
	  user = FactoryGirl.create(:user)
	  sign_in user
	  place = FactoryGirl.create(:place, :user => user)

	  assert_difference 'Comment.count' do 
	  	post :create, :place_id => place.id, :comment => {
	  		:user => user, 
	  		:message => "Factory girl controller test",
	  		:rating => "1_star"
		}
	  end
	  assert_redirected_to place_path(place)
  end

end

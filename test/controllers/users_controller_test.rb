require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get home page" do
    get '/'
    assert_response :success
  end

  test "should get subscription page" do
    get '/thankyou'
    assert_response :success
  end
end

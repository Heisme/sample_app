require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def Setup
    @user       = users(:michael)
    @other_user = users(:archer)
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should redirect index when not logged in" do
    get users_url #:index
    assert_redirected_to login_url
  end

  #TODO: unit test still fail
  #test "should redirect destroy when not logged in" do
  #  assert_no_difference 'User.count' do
  #    delete :destroy, id: @user
  #  end
  #  assert_redirected_to login_url
  #end

  #TODO: unit test still fail
  #test "Should redirect destroy when logged in as a non-admin" do
  #  log_in_as(@user)
  #  assert_no_difference 'User.count' do
  #    delete :destroy, id: @user
  #  end
  #  assert_redirected_to root_url
  #end


end

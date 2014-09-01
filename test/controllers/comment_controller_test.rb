require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  test "should get commenter_name:string" do
    get :commenter_name:string
    assert_response :success
  end

  test "should get description:text" do
    get :description:text
    assert_response :success
  end

  test "should get rating:integer" do
    get :rating:integer
    assert_response :success
  end

  test "should get movie:references" do
    get :movie:references
    assert_response :success
  end

end

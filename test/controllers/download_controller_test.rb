require 'test_helper'

class DownloadControllerTest < ActionController::TestCase
  test "should get resume" do
    get :resume
    assert_response :success
  end

  test "should get grades" do
    get :grades
    assert_response :success
  end

  test "should get article" do
    get :article
    assert_response :success
  end

  test "should get coverLetter" do
    get :coverLetter
    assert_response :success
  end

end

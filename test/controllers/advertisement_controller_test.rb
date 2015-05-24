require 'test_helper'

class AdvertisementControllerTest < ActionController::TestCase
  test "should get post" do
    get :post
    assert_response :success
  end

  test "should get showad" do
    get :showad
    assert_response :success
  end

  test "should get viewall" do
    get :viewall
    assert_response :success
  end

end

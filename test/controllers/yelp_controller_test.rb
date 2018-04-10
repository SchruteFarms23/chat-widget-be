require 'test_helper'

class YelpControllerTest < ActionDispatch::IntegrationTest
  test "should get fetch" do
    get yelp_fetch_url
    assert_response :success
  end

end

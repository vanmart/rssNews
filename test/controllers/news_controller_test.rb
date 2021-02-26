require "test_helper"

class NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get getNews" do
    get news_getNews_url
    assert_response :success
  end
end

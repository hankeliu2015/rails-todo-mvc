require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get creat" do
    get items_creat_url
    assert_response :success
  end

end

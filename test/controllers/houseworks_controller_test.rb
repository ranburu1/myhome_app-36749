require 'test_helper'

class HouseworksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get houseworks_index_url
    assert_response :success
  end

end

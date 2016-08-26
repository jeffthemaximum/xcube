require 'test_helper'

class SheetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sheets_new_url
    assert_response :success
  end

end

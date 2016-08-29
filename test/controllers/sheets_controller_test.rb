require 'test_helper'

class SheetsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sheets_show_url
    assert_response :success
  end

end

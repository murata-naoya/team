require 'test_helper'

class Admin::EndusersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_endusers_index_url
    assert_response :success
  end

end

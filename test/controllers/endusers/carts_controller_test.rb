require 'test_helper'

class Endusers::CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get endusers_carts_index_url
    assert_response :success
  end

end

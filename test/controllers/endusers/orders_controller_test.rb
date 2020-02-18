require 'test_helper'

class Endusers::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get endusers_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get endusers_orders_show_url
    assert_response :success
  end

end

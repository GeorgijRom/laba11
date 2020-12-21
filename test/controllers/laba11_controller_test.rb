require './test/test_helper'

class Laba11ControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get laba11_input_url
    assert_response :success
  end

  test "should get view" do
    get laba11_view_url
    assert_response :success
  end
  test "should search differences" do
    get '/laba11/view.json', params: {happy_numbers_quantity: 5}
    assert_response :success
    r1 = assigns[:result]
    get '/laba11/view.json', params: {happy_numbers_quantity: 7}
    assert_response :success
    assert_not_equal assigns[:result], r1

  end
end

require 'test_helper'

class ReservedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserved = reserveds(:one)
  end

  test "should get index" do
    get reserveds_url
    assert_response :success
  end

  test "should get new" do
    get new_reserved_url
    assert_response :success
  end

  test "should create reserved" do
    assert_difference('Reserved.count') do
      post reserveds_url, params: { reserved: { KTP: @reserved.KTP, address: @reserved.address, email: @reserved.email, name: @reserved.name, pax: @reserved.pax, title: @reserved.title } }
    end

    assert_redirected_to reserved_url(Reserved.last)
  end

  test "should show reserved" do
    get reserved_url(@reserved)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserved_url(@reserved)
    assert_response :success
  end

  test "should update reserved" do
    patch reserved_url(@reserved), params: { reserved: { KTP: @reserved.KTP, address: @reserved.address, email: @reserved.email, name: @reserved.name, pax: @reserved.pax, title: @reserved.title } }
    assert_redirected_to reserved_url(@reserved)
  end

  test "should destroy reserved" do
    assert_difference('Reserved.count', -1) do
      delete reserved_url(@reserved)
    end

    assert_redirected_to reserveds_url
  end
end

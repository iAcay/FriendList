require "test_helper"

class Blog1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog1 = blog1s(:one)
  end

  test "should get index" do
    get blog1s_url
    assert_response :success
  end

  test "should get new" do
    get new_blog1_url
    assert_response :success
  end

  test "should create blog1" do
    assert_difference("Blog1.count") do
      post blog1s_url, params: { blog1: { email: @blog1.email, first_name: @blog1.first_name, last_name: @blog1.last_name, phone: @blog1.phone, twitter: @blog1.twitter } }
    end

    assert_redirected_to blog1_url(Blog1.last)
  end

  test "should show blog1" do
    get blog1_url(@blog1)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog1_url(@blog1)
    assert_response :success
  end

  test "should update blog1" do
    patch blog1_url(@blog1), params: { blog1: { email: @blog1.email, first_name: @blog1.first_name, last_name: @blog1.last_name, phone: @blog1.phone, twitter: @blog1.twitter } }
    assert_redirected_to blog1_url(@blog1)
  end

  test "should destroy blog1" do
    assert_difference("Blog1.count", -1) do
      delete blog1_url(@blog1)
    end

    assert_redirected_to blog1s_url
  end
end

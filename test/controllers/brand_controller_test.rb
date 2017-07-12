require 'test_helper'

class BrandControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brand_index_url
    assert_response :success
  end

  test "should get new" do
    get brand_new_url
    assert_response :success
  end

  test "should get create" do
    get brand_create_url
    assert_response :success
  end

  test "should get show" do
    get brand_show_url
    assert_response :success
  end

  test "should get edit" do
    get brand_edit_url
    assert_response :success
  end

  test "should get update" do
    get brand_update_url
    assert_response :success
  end

  test "should get destroy" do
    get brand_destroy_url
    assert_response :success
  end

end

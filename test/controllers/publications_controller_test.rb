require 'test_helper'

class PublicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get publications_new_url
    assert_response :success
  end

  test "should get index" do
    get publications_index_url
    assert_response :success
  end

  test "should get show" do
    get publications_show_url
    assert_response :success
  end

  test "should get edit" do
    get publications_edit_url
    assert_response :success
  end

end

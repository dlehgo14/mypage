require 'test_helper'

class QnasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qnas_index_url
    assert_response :success
  end

  test "should get new" do
    get qnas_new_url
    assert_response :success
  end

  test "should get edit" do
    get qnas_edit_url
    assert_response :success
  end

end

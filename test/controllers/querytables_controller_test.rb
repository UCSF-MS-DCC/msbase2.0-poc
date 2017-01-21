require 'test_helper'

class QuerytablesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get querytables_new_url
    assert_response :success
  end

  test "should get create" do
    get querytables_create_url
    assert_response :success
  end

  test "should get update" do
    get querytables_update_url
    assert_response :success
  end

  test "should get delete" do
    get querytables_delete_url
    assert_response :success
  end

  test "should get show" do
    get querytables_show_url
    assert_response :success
  end

  test "should get index" do
    get querytables_index_url
    assert_response :success
  end

end

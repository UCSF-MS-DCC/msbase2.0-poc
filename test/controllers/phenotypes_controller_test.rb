require 'test_helper'

class PhenotypesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get phenotypes_update_url
    assert_response :success
  end

end

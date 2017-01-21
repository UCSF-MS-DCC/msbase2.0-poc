require 'test_helper'

class PhisControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get phis_update_url
    assert_response :success
  end

end

require 'test_helper'

class VisitsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get visits_update_url
    assert_response :success
  end

end

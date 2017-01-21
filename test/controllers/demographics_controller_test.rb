require 'test_helper'

class DemographicsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get demographics_update_url
    assert_response :success
  end

end

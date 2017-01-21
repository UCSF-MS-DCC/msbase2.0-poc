require 'test_helper'

class StudysubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get studysubjects_update_url
    assert_response :success
  end

end

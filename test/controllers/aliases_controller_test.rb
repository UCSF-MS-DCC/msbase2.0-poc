require 'test_helper'

class AliasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aliases_index_url
    assert_response :success
  end

end

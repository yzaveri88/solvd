require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get questions_show_url
    assert_response :success
  end

  test "should get result" do
    get questions_result_url
    assert_response :success
  end

end

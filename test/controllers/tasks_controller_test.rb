require 'test_helper'

class TasksControllerTest < ActionController::TestCase

  test "should get new" do
    get :new, project_id: projects(:one).id
    assert_response :success
  end

  test "should toggle is_complete status" do
    get :toggle, project_id: projects(:one).id
    assert_response :success
    assert_not_equal tasks(:one).is_complete
  end

end

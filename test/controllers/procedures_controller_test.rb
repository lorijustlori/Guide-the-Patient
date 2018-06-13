require 'test_helper'

class ProceduresControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get procedures_create_url
    assert_response :success
  end

  test "should get new" do
    get procedures_new_url
    assert_response :success
  end

  test "should get show" do
    get procedures_show_url
    assert_response :success
  end

end

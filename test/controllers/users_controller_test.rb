require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "get new user page" do
    get new_user_path
    assert_template :new
  end

  test "create user succeeded" do
    post users_path, params: { user: { email: "a034506618@gmail.com", first_name: "yee", last_name: "chen", address: "taipei" } }
    assert_template :new
  end

  test "create user failed" do
    post users_path, params: { user: { email: "a034506618@qq.com", first_name: "yee", last_name: "chen", address: "taipei" } }
    assert_template :new    
  end
end

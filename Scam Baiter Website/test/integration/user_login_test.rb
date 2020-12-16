require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest

    setup do
        @profile = Profile.new({username: 'username', password: 'password', password_confirmation: 'password'})
    end

    test "login with valid credentials" do
        @profile.save
        get login_url
        assert_response :success
        assert_not is_logged_in?
        assert_template "sessions/new", "layouts/application"
        post login_url, params: { session: { username: "username", password: "password" }}
        assert_redirected_to root_url
        follow_redirect!
        assert_template "home/index", "layouts/application"
        assert is_logged_in?
    end

    test "login with invalid credentials" do
        @profile.save
        get login_url
        assert_response :success
        assert_not is_logged_in?
        assert_template "sessions/new", "layouts/application"
        post login_url, params: { session: { username: "username", password: "wrongpw" }}
        assert_response :success
        assert_template "sessions/new", "layouts/application"
        assert_not is_logged_in?
    end

end
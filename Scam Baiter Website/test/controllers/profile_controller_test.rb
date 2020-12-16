require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest

  setup do 
    @profile = profiles(:admin)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get show" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count', 1) do
      post profiles_url, params: { profile: { username: "username", password: "password", password_digest: "password_digest", address: "address", email: "email@test.com", telephone: "telephone", first_name: "first_name", last_name: "last_name", age: 12, gender: "gender", admin: true }}
    end 

    assert_redirected_to profiles_url
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { username: "username", password: "password", password_digest: "password_digest", address: "address", email: "email@test.com", telephone: "telephone", first_name: "first_name", last_name: "last_name", age: 12, gender: "gender", admin: true }}
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end 

    assert_redirected_to profiles_url
  end

end

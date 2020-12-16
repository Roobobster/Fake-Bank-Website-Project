require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest

  setup do 
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get show" do
    get profile_url(@profile)
    assert_response :success
  end

  # test "should create profile" do
  #   assert_difference('Profile.count') do
  #     post profiles_url, params: { profiles: { username: @profile.username, password: @profile.password, password_digest: @profile.password_digest, address: @profile.address, email: @profile.email, telephone: @profile.telephone, first_name: @profile.first_name, last_name: @profile.last_name, age: @profile.age, gender: @profile.gender, admin: @profile.admin }}
  #   end 

  #   assert_redirected_to profile_url(Profile.last)
  # end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  # test "should update profile" do
  #   patch profile_url(@profile), params: { profiles: { username: "username", password: "password", password_digest: "password_digest", address: "address", email: "email@test.com", telephone: "telephone", first_name: "first_name", last_name: "last_name", age: 12, gender: "gender", admin: true }}
  #   assert_redirected_to profile_url(@profile)
  # end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end 

    assert_redirected_to profiles_url
  end

end

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @profile = Profile.new({username: 'jake', password: 'thedog', password_confirmation: 'thedog'})
  end

  test "default profile should be valid" do
    assert @profile.valid?
  end

  test "profile with non-matching passwords is invalid" do
    @profile.password = 'thehuman'
    assert_not @profile.valid?
  end

  test "username should be at least 4 characters" do
    @profile.username = "x" * 3
    assert_not @profile.valid?
  end

  test "username should be at least 4 characters 2" do
    @profile.username = "x" * 31
    assert_not @profile.valid?
  end

  test "username shouldn't be blank" do
    @profile.username = " " * 4
    assert_not @profile.valid?
  end

  test "username should be unique" do
    copy_profile = @profile.dup
    copy_profile.username = @profile.username.upcase
    @profile.save
    assert_not copy_profile.valid?
  end

  test "username should have at least 6 characters" do
    @profile.password = @profile.password_confirmation = "x" * 5
    assert_not @profile.valid?
  end

  test "password shouldn't be blank" do
    @profile.password = @profile.password_confirmation = " " * 6
    assert_not @profile.valid?
  end
end

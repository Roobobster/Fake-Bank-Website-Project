require 'test_helper'
#Tests - Do not work rn
#Problem might be some files are missing such as System folder
#test_helper.rb is missing and probs why error
class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new({username: 'jake', password: 'thedog', password_confirmation: 'thedog'})
  end

  test "default user should be valid" do
    assert @user.valid?
  end

  test "user with non-matching passwords is invalid" do
    @user.password = 'thehuman'
    asset_not @user.valid?
  end

  test "username should be at least 4 characters" do
    @user.username = "x" * 3
    assert_not @user.valid?
  end

  test "username should be at least 4 characters" do
    @user.username = "x" * 31
    assert_not @user.valid?
  end

  test "username shouldn't be blank" do
    @user.username = " " * 4
    assert_not @user.valid?
  end

  test "username should be unique" do
    copy_user = @user.dup
    copy_user.username = @copy_user.username.upcase
    @user.save
    assert_not copy_user.valid?
  end
  end

  test "username should have at least 6 characters" do
    @user.password = @user.password_confirmation = "x" * 5
    assert_not @user.valid?
  end

  test "password shouldn't be blank" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

end


require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do 
    @transaction = transactions(:one)
    @account_id = @transaction.account_id
  end

  test "should get index" do
    get url_for(:controller => "transactions", :action => "index", :account_id => @account_id)
    assert_response :success
  end

  # test "should get show" do
  #   get url_for(:controller => "transactions", :action => "show", :account_id => @account_id, :id => @transaction.id)
  #   assert_response :success
  # end

  # test "should get new" do
  #   get url_for(:controller => "transactions", :action => "new", :account_id => @account_id)
  #   assert_response :success
  # end

  # test "should get delete" do
  #   get transactions_delete_url
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get transactions_edit_url
  #   assert_response :success
  # end


end

class AdminController < ApplicationController
  def index
    @users=Profile.order('username ASC')
  end
end

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  if ENV["RAILS_GROUPS"] == 'assets'
  Excon.defaults[:nonblock] = false
  end
end

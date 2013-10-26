class HomeController < ApplicationController
  def index
    render 'home/index'
  end

  def sign_up
    render 'home/sign_up'
  end

  def create_user
    User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    render 'dashboard/dashboard'
  end
end
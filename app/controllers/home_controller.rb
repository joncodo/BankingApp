class HomeController < ApplicationController
  def index
    render 'home/index'
  end

  def sign_up
    render 'home/sign_up'
  end

  def create_user
    puts params.inspect
    render 'dashboard/dashboard'
  end
end
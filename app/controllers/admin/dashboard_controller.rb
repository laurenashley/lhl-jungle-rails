class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['BASIC_AUTH_USER'], password: ENV['BASIC_AUTH_PASS']

  def show
    @products = Product.all
    @categories = Category.all
  end
end

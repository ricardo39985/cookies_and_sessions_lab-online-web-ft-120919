# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart
  def cart
    session[:cart] = [] unless session[:cart]
    session[:cart]
    # byebug
  end

  def homepage
    cart << params[:product]

    # byebug
  end
end

# frozen_string_literal: true

# Controller class for handling sessions, logins, logouts, etc.
class SessionController < ApplicationController
  def new
    render :new
  end

  def create
    account = Account.find_by(email: params[:email])

    if account.present? && account.authenticate(params[:password])
      session[:account_id] = account.id
      redirect_to home_path, notice: 'Logged in Succesfully'
    else
      flash.now[:alert] = 'Invalid email or password!'
      render :new
    end
  end

  def logout
    session[:account_id] = nil
    redirect_to_root_path notice: 'Logged Out'
  end
end
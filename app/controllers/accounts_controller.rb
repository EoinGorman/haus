# frozen_string_literal: true

# Controller class for Accounts
class AccountsController < ApplicationController
  def home
    @account = Account.find_by(id: session[:account_id])
    render :home
  end

  def shopping_list; end

  def calendar; end

  def to_do_list; end
end

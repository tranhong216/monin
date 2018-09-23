class ResultsController < ApplicationController
  before_action :logged_in_user

  def index
    @users = User.all.includes(:money)
    @tongtien = Money.expense.from_month.sum(:amount)
    @tien_tb = (@tongtien/@users.count).round()
  end
end

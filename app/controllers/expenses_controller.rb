class ExpensesController < ApplicationController
  before_action :logged_in_user, only: %i(index new create)

  def index
    @expenses = Money.expense.from_month.order(id: :desc)
  end

  def new
    @expense = current_user.money.build
  end

  def create
    @expense = current_user.money.build expense_params.merge(type_of_money: :expense, create_at: Time.current)
    if @expense.save
      flash[:success]  = "Thêm thành công"
    else
      flash[:warning] = "Thêm thất bạt"
    end
    redirect_to root_path
  end

  private

  def expense_params
    params.require(:money).permit %i(description amount)
  end
end

class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
     # @expenses = Expense.order("date DESC")
     # @expenses = Expense.where("concept LIKE ? AND category_id LIKE ?", "%#{params[:concept]}%", "%#{params[:category_id]}")
     @expenses = Expense.where("concept LIKE ? AND category_id LIKE ? AND user_id = ?", "%#{params[:concept]}%", "%#{params[:category_id]}", current_user.id)
  end
end

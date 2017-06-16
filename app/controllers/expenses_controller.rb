class ExpensesController < ApplicationController
  def index
     # @expenses = Expense.order("date DESC")
     @expenses = Expense.where("concept LIKE ? AND category_id LIKE ?", "%#{params[:concept]}%", "%#{params[:category_id]}")
  end
end

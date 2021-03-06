class TodosController < ApplicationController

  def index
    @todos = Todo.descending
    respond_with @todos
  end

  def create
    @todo = Todo.create(todo_params)
    if @todo.save
      respond_with @todo
    else 
      puts "*" *500
      render json: { errors: @todo.errors.full_messages }
    end
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(todo_params)
    respond_with @todo
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :user_id, :is_complete)
  end

end
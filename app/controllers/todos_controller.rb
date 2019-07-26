class TodosController < ApplicationController

  def index
    @todos = Todo.all
    respond_with @todos
  end

  def create
    @todos = Todo.create(params[:post])
    respond_with @todos
  end

  def update
    @todos = Todo.update(params[:update])
    respond_with @todos
  end

end
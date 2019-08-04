class CommentsController < ApplicationController
  
  def index
    @comments = Comment.descending
    respond_with @comments
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      respond_with @comment
    else 
      puts "*" *500
      render json: { errors: @comment.errors.full_messages }
    end
  end

  def update
    @comment= Comment.find(params[:id])
    @comment.update_attributes(comment_params)
    respond_with @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:id, :text, :user_id, :todo_id, :status)
  end



end
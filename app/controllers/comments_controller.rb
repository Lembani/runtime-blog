class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @author = current_user.id
    redirect_to user_posts_path(id: @comment.post_id, author_id: @author) if @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :author_id, :post_id)
  end
end

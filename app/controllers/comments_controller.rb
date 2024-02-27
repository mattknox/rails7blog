class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.create! params.required(:comment).permit(:content)
    redirect_to @post, notice: "Comment was successfully created."
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end

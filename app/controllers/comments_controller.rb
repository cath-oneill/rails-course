class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)   
    comment.video_id = params[:video_id]
    comment.save
    redirect_to :back 
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :video_id)
  end
end

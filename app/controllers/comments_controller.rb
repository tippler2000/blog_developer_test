class CommentsController < ApplicationController
  def create
	  @post = Post.find(params[:post_id])
	  if user_signed_in?
		@comment = @post.comments.create!(params.require(:comment).permit!)
		redirect_to @post, notice: 'Comment saved'
	  else
	    redirect_to @post, notice: 'You need to be logged in to comment on posts'
	  end
  end
end

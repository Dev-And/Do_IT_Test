class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(content: comment_params[:content], user_id: current_user.id)
   # @comment.user_id = current_user.id if current_user
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end

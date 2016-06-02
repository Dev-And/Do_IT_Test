class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])

    @comment = @product.comments.create(content: comment_params[:content], user_id: current_user.id)
    if @comment.save
      flash[:success] = "Comment created"
      redirect_to @product
    else
      flash[:error] = "Something went wrong"
      redirect_to @product
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end

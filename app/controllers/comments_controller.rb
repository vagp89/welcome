class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    # Associate my review together with my article
    @comment.article = @article
    if @comment.save
      # success
      redirect_to article_path(@article)
    else
      # failure
      render :new
    end
  end

  private

  def review_params
    params.require(:comment).permit(:content)
  end
end

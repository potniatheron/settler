class CommentsController < ApplicationController

  def index
    @article = Article.find(params[:article_id])
    @comments = @article.comments.all
  end

  def new
    @comments = Comment.new
  end
  
def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.status = "draft"

    if @comment.save
      redirect_to article_path(@article), notice: "Thank you. Your comment was created and is awaiting moderation. Once approved it will appear on this page momentarily."
    else
      redirect_to article_path(@article), notice: "Your comment could not be saved."
    end
  end

  def approve
    Comment.update_all({status: "approved"}, {id: params[:comment_ids]})
    redirect_to article_comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :article_id, :creator, :status)
  end
end

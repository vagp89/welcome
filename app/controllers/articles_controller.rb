class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        articles.title @@ :query \
        OR users.first_name @@ :query \
        OR users.last_name @@ :query \
        OR articles.content @@ :query \
      "
      @articles = Article.joins(:user).where(sql_query, query: "%#{params[:query]}%")
      @searchterm = params[:query]
    else
      @articles = policy_scope(Article)
      @searchterm = "Articles"
    end
    @mentors = policy_scope(User).where(mentor: true)
  end

  def show
    @article = Article.find(params[:id])
    @mentor = @article.user
    authorize @article
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    authorize @article
    @article.user = current_user
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    authorize @article
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: 'The article was successfully destroyed.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.permit(:title, :summary, :content, :photo)
  end
end

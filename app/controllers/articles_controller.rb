class ArticlesController < ApplicationController
    def new
    end

    def create
      @article = Article.new(title: params["article"]["title"], text: params["article"]["text"])
      @article.save
      redirect_to @article
    end
    def show
      # render json: params
      @article = Article.find params[:id]
    end
end

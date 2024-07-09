class MypageController < ApplicationController
  def show
    articles = Article.all
    articles = articles.where("title LIKE ?", "%#{params[:title]}%") if params[:title].present?
    @articles = articles.all.page(params[:page]).per(9)
  end

end

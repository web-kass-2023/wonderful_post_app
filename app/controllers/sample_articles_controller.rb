class SampleArticlesController < ApplicationController
  def index
    @sapmle = SampleArticle.all
  end

  def show
    @sapmle = SampleArticle.find(params(:id))

  end
  def create
    @sample = SampleArticle.new(
      title: params[:title],
      content: params[:content],

    )

    @sample.save!

    render :show

  end
end

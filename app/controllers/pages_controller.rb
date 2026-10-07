class PagesController < ApplicationController
  def home
    @latest_articles = Article.order(published_at: :desc).limit(3)
    @categories = Article.distinct.order(:category).pluck(:category)
  end

  def about
  end
end

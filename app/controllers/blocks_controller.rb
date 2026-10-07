class BlocksController < ApplicationController
  before_action :set_article

  def create
    @block = @article.blocks.build(block_params)
    @block.position = @article.blocks.maximum(:position).to_i + 1

    if @block.save
      redirect_to edit_article_path(@article)
    else
      render "articles/edit", status: :unprocessable_entity
    end
  end

  def update
    @block = @article.blocks.find(params[:id])

    if @block.update(block_params)
      refirect_to edit_article_path(@article)
    else
      render "articles/edit", status: :unprocessable_entity
    end
  end

  def destroy
    @block = @article.blocks.find(params[:id])
    @block.destroy

    redirect_to edit_article_path(@article), status: :see_other
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def block_params
    params.expect(block: [:kind, :body, :caption, :video_url, { images: [] }])
  end
end

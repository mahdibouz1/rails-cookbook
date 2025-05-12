class BookmarksController < ApplicationController
  before_action :set_category

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = @category.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to category_path(@category), notice: "Recipe added!"
    else
      render :new
    end
  end

  def destroy
    @bookmark = @category.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@category), notice: "Recipe removed!"
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id)
  end
end

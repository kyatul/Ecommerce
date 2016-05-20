class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = "Category Created"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  private

    def category_params
      params.require(:category).permit(:name)
    end
end

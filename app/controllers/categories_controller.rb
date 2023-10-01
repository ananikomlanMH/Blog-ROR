class CategoriesController < ApplicationController

  def index
    @categories = Categorie.all
  end

  def show
    @post = Categorie.find(params[:id])
  end

  def new
    @category = Categorie.new()
  end

  def create
    Categorie.create(category_params)
    redirect_to categories_path
  end

  def edit
    @category = Categorie.find(params[:id])
  end

  def update
    @category = Categorie.find(params[:id])
    @category.update(category_params)
    redirect_to categories_path
  end
  def destroy
    @category = Categorie.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  def category_params
    return params.require(:categorie).permit(:title)
  end
end
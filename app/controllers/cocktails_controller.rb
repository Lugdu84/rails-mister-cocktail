class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i[show destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show; end


  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def find
    search = params[:search]
    # chercher pour n'afficher qu'une fois un cocktail, si plusieurs ingrédients
    @cocktails = Cocktail.all.joins(:ingredients)
                         .where("ingredients.name LIKE '%#{search}%'")
    render :index, notice: search
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end

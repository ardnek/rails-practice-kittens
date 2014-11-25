class CategorizationsController < ApplicationController



  def new
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = @kitten.categorizations.new
  end

  def create
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = @kitten.categorizations.new(params.require(:categorization).permit(:category_id))
    if @categorization.save
      redirect_to root_path, notice: "Kitten: CATegorized."
    else
      render :new
    end
  end
end

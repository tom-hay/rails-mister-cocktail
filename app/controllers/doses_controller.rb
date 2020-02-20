class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to dose_path(@dose)
    else
      # do something else
      render :new
    end
  end

  def edit
  end

  def update
    @dose.update(dose_params)

    redirect_to dose_path(@dose)
  end

  def show
    @reviews = @dose.reviews
  end

  def destroy
    @dose.destroy

    redirect_to doses_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:name, :address, :stars)
  end
end

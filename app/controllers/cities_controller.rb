class CitiesController < ApplicationController
  def new
    @city=City.new
  end
  def index
    @cities=City.all
  end
  def create
    @cities=City.new(cities_param)
    if @cities.save
      redirect_to cities_url
    else
      render 'new'
    end
  end
  def edit
     @city = City.find(id: params[:id])
  end
  def update
    @city = City.find(id: params[:id])

    if @city.update(cities_param)
      redirect_to cities_path
    else
      render "edit"
    end
  end
  def destroy
    @city=City.find_by(id: params[:id])
    if @city.destroy
      redirect_to cities_url
    end
  end
  private
  def cities_param
    params.require(:city).permit(:name)
  end
end

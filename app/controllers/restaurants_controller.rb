class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = set_restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  def edit
    @restaurant = set_restaurant
  end

  def update
    @restaurant = set_restaurant
    @restaurant.update(restaurant_params)
    redirect_to update_path(@restaurant)
  end

  def destroy
    @restaurant = set_restaurant
    @restaurant.destroy
    redirect_to restaurants_path(@restaurant)

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
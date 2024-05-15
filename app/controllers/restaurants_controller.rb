class RestaurantsController < ApplicationController

  def best
     @restaurants = Restaurant.where(rating: 5)
  end

  def index
    @restaurants = Restaurant.all
end

  def show
    @restaurant = Restaurant.all
end

  def new
  @restaurant = Restaurant.new
end

def edit
  @restaurant = Restaurant.find(params[:id])
end

def update
  @restaurant = Restaurant.find(params[:id])
  @restaurant.update(params[:restaurant])
end

def add
  @restaurant = Restaurant.new(params[:restaurant])
  @restaurant.save
end
end

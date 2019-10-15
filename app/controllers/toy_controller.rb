class ToyController < ApplicationController

  def index
    @toys = Toy.all.sort
  end

  def create
    Toy.create(toy_params)
    redirect_to root_path
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update(toy_params)
    redirect_to root_path
  end

  def new
    @toy = Toy.new
  end

  def edit 
    @toy = Toy.find(params[:id])
  end

  def show
    @toy = Toy.find(params[:id])
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy

    redirect_to root_path
  end

  private
  def toy_params
    params.require(:toy).permit(:name, :description, :date, :user_id)
  end
end
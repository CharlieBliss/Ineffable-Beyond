class WorldsController < ApplicationController

  def index
    @worlds = World.all
  end

  def new
    @world = World.new
  end

  def create
    @world = World.new(world_params)
    if @world.save
      redirect_to @world
    else
      flash[:alert] = "Hey, something went wrong there, try it again"
      render "world#new"
    end
  end

  def show
    @world = World.find(params[:id])
    @stories = @world.stories
    @articles = @world.articles
  end


  def edit
  end


  def update
  end


  def destroy
  end

  private
  def world_params
    params.require(:world).permit(:name, :description)
  end
end

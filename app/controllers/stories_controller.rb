class StoriesController < ApplicationController
  def new
    @world = World.find(params[:world_id])
    @story = Story.new
  end

  def create
    @world = World.find(params[:world_id])
    @story = Story.new(name: params[:story][:name], world_id: @world.id, author_id: current_user.id)
    # if params[:story][:private] != 0
    #   @story. = true
    if @story.save
      redirect_to "/worlds/#{@world.id}"
    else
      flash[:alert] = "Something went wrong, try making that story again!"
      render "stories#new"
    end
  end

  def show
    @story = Story.find(params[:id])
    @chapters = @story.articles
    if @chapters.length == 1
      @short_story = @chapters[0]
    else
      @short_story = nil
    end
    @articles = @story.articles
  end


  def edit
  end


  def update
  end


  def destroy
  end
end

class ArticlesController < ApplicationController
  def new
    @world = World.find(params[:world_id])
    @article = Article.new
    @story = Story.find(params[:story_id]) if params[:story_id]
  end

  def create
    @world = World.find(params[:world_id])
    @article = Article.new(title: params[:article][:title], content: params[:article][:content], world_id: @world.id, author_id: current_user.id)
    # if params[:story][:private] != 0
    #   @story. = true
    if @article.save
      redirect_to "/worlds/#{@world.id}"
    else
      flash[:alert] = "Something went wrong, try making that story again!"
      render "stories#new"
    end
  end

  def show
    @article = Article.find(params[:id])
  end


  def edit
  end


  def update
  end


  def destroy
  end
end

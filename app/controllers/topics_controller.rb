class TopicsController < ApplicationController
  def index
<<<<<<< HEAD
    @topics = Topic.all
  end

  def show
     @topic = Topic.find(params[:id])
   end

   def new
     @topic = Topic.new
   end

   def create
=======
     @topics = Topic.all
  end

  def show
      @topic = Topic.find(params[:id])
  end

  def new
       @topic = Topic.new
  end

  def create
>>>>>>> bloccit-checkpoint22
     @topic = Topic.new
     @topic.name = params[:topic][:name]
     @topic.description = params[:topic][:description]
     @topic.public = params[:topic][:public]

     if @topic.save
       redirect_to @topic, notice: "Topic was saved successfully."
     else
       flash.now[:alert] = "Error creating topic. Please try again."
       render :new
     end
   end

   def edit
     @topic = Topic.find(params[:id])
   end

   def update
<<<<<<< HEAD
     @topic = Topic.find(params[:id])
     @topic.name = params[:name]
     @topic.description = params[:description]
     @topic.public = params[:public]

     if @topic.save
        flash[:notice] = "Topic was updated."
       redirect_to @topic
     else
       flash.now[:alert] = "Error saving topic. Please try again."
       render :edit
     end
   end

   def destroy
     @topic = Topic.find(params[:id])

     if @topic.destroy
       flash[:notice] = "\"#{@topic.name}\" was deleted successfully."
       redirect_to action: :index
     else
       flash.now[:alert] = "There was an error deleting the topic."
       render :show
     end
   end
end
=======
      @topic = Topic.find(params[:id])
      @topic.name = params[:name]
      @topic.description = params[:description]
      @topic.public = params[:public]

      if @topic.save
         flash[:notice] = "Topic was updated."
        redirect_to @topic
      else
        flash.now[:alert] = "Error saving topic. Please try again."
        render :edit
      end
  end

    def destroy
      @topic = Topic.find(params[:id])

      if @topic.destroy
        flash[:notice] = "\"#{@topic.name}\" was deleted successfully."
        redirect_to action: :index
      else
        flash.now[:alert] = "There was an error deleting the topic."
        render :show
      end
    end
 end
>>>>>>> bloccit-checkpoint22

class SoundsController < ApplicationController
  def index
    @sounds = Sound.all
  end

  def show
    @sound = Sound.find(params[:id])
  end

  def new
    @sound = Sound.new
  end  

  def create
    sound = Sound.new(sound_params)
    sound.save
    redirect_to '/sounds'    
  end

  def edit
    @sound = Sound.find(params[:id])
  end

  def update
    @sound = Sound.find(params[:id])
    @sound.update(video_params)
    redirect_to '/sounds'
  end

  def destroy
    @sound = Sound.find(params[:id])
    @sound.destroy
    redirect_to '/sounds'
  end

  private
  def sound_params
    params.require(:sound).permit(:title, :soundcloud_url)
  end
end

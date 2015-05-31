class SoundFormatsController < ApplicationController
  def new
  	@sound_format = SoundFormat.new
  end

  def create
  	@sound_format = SoundFormat.new(sound_format_params)
  	if @sound_format.save
      flash[:notice] = "Format successfully created"		
  	  redirect_to edit_sound_format_url(@sound_format)	  
  	else		
  	  render :new	
  	end	
  end

  def edit
  	@sound_format = SoundFormat.find(params[:id])
  end

  def update
  	@sound_format = SoundFormat.find(params[:id])
  	if @sound_format.update_attributes(sound_format_params)
  	  flash[:notice] = "Format successfully updated"		
  	  redirect_to edit_sound_format_url(@sound_format)	
    else
      render :edit	
    end		
  end	

  def index	
    @sound_formats = SoundFormat.order(:name)
  end 	

  private

  def sound_format_params
  	params.require(:sound_format).permit(:name)
  end	
end	

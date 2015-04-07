class PicturesController < ApplicationController

def index
  @pictures=Picture.all									
end

def show
  @picture = Picture.find(params[:id])							
end

def new
  @picture=Picture.new									
end 

def edit
  @picture=Picture.find(params[:id])							
end


def create
  @picture = Picture.new(picture_params)						
  if @picture.save
     @picture.image_url="/uploads/#{@picture.id}"					
     @picture.save
     uploaded_io = params[:picture][:image]
     File.open(Rails.root.join('public', 'uploads', @picture.id.to_s), 'wb') do |file|	
     file.write(uploaded_io.read)
    end  
    p @picture
    respond_to do |format|
    format.json
    format.html { redirect_to(@picture)}
   end
  else
   redirect_to new_path
 end

end
 
def update
 @picture = Picture.find(params[:id])
  if @picture.update(picture_params)
    respond_to do |format|
    format.json
    format.html { redirect_to(@picture)}
   end
  else
    render 'edit'
  end

end

def destroy
  @picture = Picture.find(params[:id])
  @picture.destroy
  respond_to do |format|
    format.json
    format.html { redirect_to(pictures_path)}
   end
end

private
def picture_params									
  params.require(:picture).permit(:name, :description, :place)
end

end


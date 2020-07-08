class PicturesController < ItemsController

  def new
    @journey = Journey.find(params[:journey_id])
    @picture = Picture.new
    authorize @picture
  end

  def create
    @picture = Picture.new(picture_params)
    @journey = Journey.find(params[:journey_id])
    @picture.journey = @journey
     if @picture.location == "Lisbon"
      @picture.latitude = 38.7077507
      @picture.longitude = -9.13655919
    end
    @picture.save
    authorize @picture
    redirect_to main_journeys_path, notice: "Picture saved"
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :comment, :content, :photo, :tag_list, :location)
  end
end

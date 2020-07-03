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
    @picture.save
    authorize @picture
    redirect_to main_journeys_path, notice: "Picture saved"
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :comment, :content, :photo)
  end
end

class VideosController < ItemsController

  def new
    @journey = Journey.find(params[:journey_id])
    @video = Video.new
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    @journey = Journey.find(params[:journey_id])
    @video.journey = @journey
    if @video.location == "Lisbon"
      @video.latitude = 38.7077507
      @video.longitude = -9.13655919
    end
    @video.save
    authorize @video
    redirect_to main_journeys_path, notice: "Video saved"
  end

  private

  def video_params
    params.require(:video).permit(:name, :comment, :content, :video_rec, :tag_list, :location)
  end
end

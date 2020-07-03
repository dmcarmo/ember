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
    @video.save
    authorize @video
    redirect_to main_journeys_path, notice: "Video saved"
  end

  private

  def video_params
    params.require(:video).permit(:name, :comment, :content, :video_rec)
  end
end

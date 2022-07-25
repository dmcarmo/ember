class AudiosController < ItemsController

  def new
    @journey = Journey.find(params[:journey_id])
    @audio = Audio.new
    authorize @audio
  end

  def create
    # @audio = Audio.new(audio_params.merge(resource_type: "video", flags: "waveform"))
    raise
    @audio = Audio.new(audio_params)
    @journey = Journey.find(params[:journey_id])
    @audio.journey = @journey
    if @audio.location == "Lisbon"
      @audio.latitude = 38.7077507
      @audio.longitude = -9.13655919
    end
    @audio.save
    authorize @audio
    redirect_to main_journeys_path, notice: "Audio saved"
  end

  private

  def audio_params
    params.require(:audio).permit(:name, :comment, :content, :audio_rec, :tag_list, :location)
  end
end

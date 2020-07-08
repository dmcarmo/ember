class NotesController < ItemsController

  def new
    @journey = Journey.find(params[:journey_id])
    @note = Note.new
    authorize @note
  end

  def create
    @note = Note.new(note_params)
    @journey = Journey.find(params[:journey_id])
    @note.journey = @journey
    if @note.location == "Lisbon"
      @note.latitude = 38.7077507
      @note.longitude = -9.13655919
    end
    @note.save
    authorize @note
    redirect_to main_journeys_path, notice: "Note saved"
  end

  private

  def note_params
    params.require(:note).permit(:name, :comment, :content, :tag_list, :location)
  end
end

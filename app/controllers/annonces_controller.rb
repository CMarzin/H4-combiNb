class AnnoncesController < ApplicationController
  before_action :set_annonce, only: [:show, :edit, :update, :destroy]

  # GET /annonces
  # GET /annonces.json
  def index
    @annonces = Annonce.all
    authorize @annonces
  end

  # GET /annonces/1
  # GET /annonces/1.json
  def show
    @booking = Booking.new
    @annonce.bookings.build({:startTime => "2017-12-23", :endTime => "2017-12-31", :annonce => @annonce, :client_id => current_user[:id]})
  end

  # GET /annonces/new
  def new
    @annonce = Annonce.new
    authorize @annonce
  end

  # GET /annonces/1/edit
  def edit
    authorize @annonce    
  end  

  # POST /annonces
  # POST /annonces.json
  def create
    @annonce = Annonce.new(annonce_params)
    # link the current user to the combi it create
    @annonce[:creator_id] = current_user[:id]

    respond_to do |format|
      if @annonce.save
        format.html { redirect_to @annonce, notice: 'Annonce was successfully created.' }
        format.json { render :show, status: :created, location: @annonce }
      else
        format.html { render :new }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annonces/1
  # PATCH/PUT /annonces/1.json
  def update
    respond_to do |format|
      if @annonce.update(annonce_params)
        format.html { redirect_to @annonce, notice: 'Annonce was successfully updated.' }
        format.json { render :show, status: :ok, location: @annonce }
      else
        format.html { render :edit }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annonces/1
  # DELETE /annonces/1.json
  def destroy
    @annonce.destroy
    respond_to do |format|
      format.html { redirect_to annonces_url, notice: 'Annonce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annonce
      @annonce = Annonce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annonce_params
      params.require(:annonce).permit(:title, :description, :status, :creator_id, :location, :start, :end, :combi_id,
      booking_attributes: [:booking_id ,:startTime, :endTime])
    end
end

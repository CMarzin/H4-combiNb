class CombisController < ApplicationController
  before_action :set_combi, only: [:show, :edit, :update, :destroy]

  # GET /combis
  # GET /combis.json
  def index
    @combis = Combi.all
    authorize @combis
  end

  # GET /combis/1
  # GET /combis/1.json
  def show
    render layout: false
    @combi = Combi.find(params[:id])
    authorize @combi
  end

  # GET /combis/new
  def new
    @combi = Combi.new
    authorize @combi
    @combi[:owner] = current_user[:username]
  end

  # GET /combis/1/edit
  def edit
    authorize @combi
  end

  # POST /combis
  # POST /combis.json
  def create
    @combi = Combi.new(combi_params)
    # link the current user to the combi it create
    @combi[:user_id] = current_user[:id]

    respond_to do |format|
      if @combi.save
        format.html { redirect_to @combi, notice: 'Combi was successfully created.' }
        format.json { render :show, status: :created, location: @combi }
      else
        format.html { render :new }
        format.json { render json: @combi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combis/1
  # PATCH/PUT /combis/1.json
  def update
    respond_to do |format|
      if @combi.update(combi_params)
        format.html { redirect_to @combi, notice: 'Combi was successfully updated.' }
        format.json { render :show, status: :ok, location: @combi }
      else
        format.html { render :edit }
        format.json { render json: @combi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combis/1
  # DELETE /combis/1.json
  def destroy
    @combi.destroy
    respond_to do |format|
      format.html { redirect_to combis_url, notice: 'Combi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combi
      @combi = Combi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combi_params
      params.require(:combi).permit(:marque, :year, :owner, :kilometers, :fueltype, :avatar)
    end
end

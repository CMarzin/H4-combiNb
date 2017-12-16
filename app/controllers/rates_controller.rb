class RatesController < ApplicationController
  # before_action :set_rate, only: [:create, :edit]

  def rate
    @rate = Rate.create(rate_params)
    render :json => @rate

    # respond_to do |format|
    #   if @rating.save
    #     format.js { rendfer :show, status: :created }        
    #     format.html { redirect_to Activite, notice: 'Combi was successfully created.' }
    #     format.json { render :show, status: :created }
    #   end
    # end
  end

  private

      # Never trust parameters from the scary internet, only allow the white list through.
      def rate_params
        params.require(:rates).permit(:rate, :rateable_type, :rateable_id, :created_by)
      end
end
class RatesController < ApplicationController

  def rate
    @rate = Rate.create(rate_params)
    render :json => @rate
  end

  private

      # Never trust parameters from the scary internet, only allow the white list through.
      def rate_params
        params.require(:rates).permit(:rate, :rateable_type, :rateable_id, :created_by)
      end
end
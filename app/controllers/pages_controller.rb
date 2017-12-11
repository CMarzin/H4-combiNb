class PagesController < ApplicationController 
  def index
    render layout: false
  end
  def results
    render layout: false
    @activites = Activite.all
    # filtering_params(params).each do |value|
    #   @activites = @activites.public_send(value) if value.present? 
    #end
  end




  def filtering_params(params)
    params.slice(:location)
  end
end
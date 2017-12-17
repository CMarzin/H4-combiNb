class PagesController < ApplicationController 
  def index
    render layout: false
  end
  def results
    render layout: false
    @activites = Activite.all
  end




  def filtering_params(params)
    params.slice(:location)
  end
end
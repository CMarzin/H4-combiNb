class PagesController < ApplicationController 
  def index
    render layout: false
    @activites = Activite.all
  end

  def results
    render layout: false
    @activites = Activite.all
  end

  def combiList
    render layout: false
    @combis = Combi.all
  end

  def filtering_params(params)
    params.slice(:location)
  end
end
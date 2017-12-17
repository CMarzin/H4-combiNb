class PagesController < ApplicationController 
  def index
    @activites = Activite.all
  end

  def results
    @activites = Activite.all
  end

  def combiList
    @combis = Combi.all
  end

  def filtering_params(params)
    params.slice(:location)
  end
end
class RatePolicy < ApplicationPolicy

  def show?
    true
  end

  def show_rated?
    return false if rated 
  end

  private 

    def rated
      record
    end

end
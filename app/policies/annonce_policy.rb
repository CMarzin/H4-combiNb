class AnnoncePolicy < ApplicationPolicy
  def index?
    true
  end
  
  def new?
    return true if user.present?
  end

  def show?
    return true if user.present?
  end

  def edit?
    if user.present?
      @matchID = annonce[:creator_id].to_i == user.id.to_i
      return true if @matchID
    end
  end

  def show_button?
    if user.present?
      @matchID = annonce[:creator_id].to_i == user.id.to_i
      return true if @matchID
    end
  end
 
  private
 
    def annonce
      record
    end
end
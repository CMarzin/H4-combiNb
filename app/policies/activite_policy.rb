class ActivitePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true 
  end

  def new?
    return true if user.present?
  end

  def edit?
    if user.present?
      @matchID = activite[:user_id].to_i == user.id.to_i
      return true if @matchID
    else
      return false
    end
  end

  def show_button?
    if user.present?
      @matchID = activite[:user_id].to_i == user.id.to_i
      return true if @matchID
    end
  end
 
  private
 
    def activite
      record
    end
end
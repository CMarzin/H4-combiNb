class CombiPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    return true if user.present?
  end

  def new?
    true
    # raise Pundit::NotAuthorizedError, "must be logged in" unless user.present?
  end

  def edit?
    if user.present?
      @matchID = combi[:user_id].to_i == user.id.to_i
      return true if @matchID
    else
      return false
    end
  end
 
  private
 
    def combi
      record
    end
end
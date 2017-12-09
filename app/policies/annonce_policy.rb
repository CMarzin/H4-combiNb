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
    raise Pundit::NotAuthorizedError, "must be logged in" unless user.present?
    @matchID = @combi[:user_id] == user.id
    return true if @matchID && user.present?
  end
 
  private
 
    def annonce
      record
    end
end
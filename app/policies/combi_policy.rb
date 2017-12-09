class CombiPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    return true if user.present?
  end

  def new?
    raise Pundit::NotAuthorizedError, "must be logged in" unless user.present?
  end

  def edit?
    raise Pundit::NotAuthorizedError, "must be logged in" unless user.present?
    @matchID = @combi[:user_id] == user.id
    return true if @matchID && user.present?
  end
 
  private
 
    def combi
      record
    end
end
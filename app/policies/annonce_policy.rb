class AnnoncePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    return true if user.present?
  end
 
  private
 
    def annonce
      record
    end
end
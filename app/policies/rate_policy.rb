class RatePolicy < ApplicationPolicy

  def show?
    true
  end

  def not_connected?
    return true unless user.present?
  end

  private

    def rated
      record
    end

end
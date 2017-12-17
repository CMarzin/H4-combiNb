class BookingPolicy < ApplicationPolicy
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
            @matchID = booking[:client_id].to_i == user.id.to_i
            return true if @matchID
        else
            return false
        end
    end

    private 
        def booking
            record
        end
end
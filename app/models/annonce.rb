class Annonce < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :combi, class_name: 'Combi', foreign_key: 'combi_id'
    has_many :bookings, class_name: 'Booking'

    accepts_nested_attributes_for :bookings

    def availability
        if self.startTime? && self.endTime?
            range_of_days = generate_date_range(self.startTime, self.endTime)
            @availability = generate_array_of_dates(range_of_days)

            self.bookings.each do |booking|
                puts
                booking_range_of_days =  generate_date_range(booking.startTime.to_s, booking.endTime.to_s)
                booking_date_range = generate_array_of_dates(booking_range_of_days)
                @availability = @availability - booking_date_range
            end

            puts "======= FINAL Annonce Availability ========="
            puts @availability

            return @availability
        else
            return @availability = []
        end
    end

    def generate_date_range(startTime, endTime)
        range_of_days = (endTime.to_date - startTime.to_date).to_i
        return range_of_days
    end

    def generate_array_of_dates(range_of_days)
        @range = Array.new

        (0..range_of_days.to_i).each do |i|
            date = (self.startTime.to_date. + i).strftime('%Y-%-m-%-d')
            @range.push(date)
        end

        return @range
    end

end

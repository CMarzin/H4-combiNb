class Booking < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :annonce, class_name: 'Annonce', foreign_key: 'annonce_id'
end

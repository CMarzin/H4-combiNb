class Annonce < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :combi, class_name: 'Combi', foreign_key: 'combi_id'
    has_many :booking, class_name: 'Booking'
end

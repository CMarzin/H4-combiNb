class Annonce < ApplicationRecord
    # belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    belongs_to :combi, class_name: 'Combi', foreign_key: 'combi_id'
end

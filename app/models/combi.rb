class Combi < ApplicationRecord
    has_many :annonces
    # belongs_to :user

    def combi_infos
        "#{self.marque} #{self.year}"
    end
end

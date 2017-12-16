class Combi < ApplicationRecord
    has_many :annonces
    has_many :rates, as: :rateable
    # belongs_to :user

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}, default_url:"/assets/combi_default.jpg"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/ 

    def combi_infos
        "#{self.marque} #{self.year}"
    end
end
  
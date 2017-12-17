class Activite < ApplicationRecord

  has_many :rates, as: :rateable

  scope :location, -> (location){where status: status}

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}, default_url:"/assets/birdies.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ 
end

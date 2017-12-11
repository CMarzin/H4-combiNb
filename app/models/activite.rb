class Activite < ApplicationRecord
  scope :location, -> (location){where status: status}
  

end

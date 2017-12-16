class Rate < ApplicationRecord
  belongs_to :rateable, polymorphic: true, optional: true
end

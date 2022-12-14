class Cost < ApplicationRecord
    has_many :activities
    has_many :subcontractors, through: :activities
    has_many :locations, through: :activities
end

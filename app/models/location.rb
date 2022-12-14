class Location < ApplicationRecord
    has_many :activities
    has_many :subcontractors, through: :activities
    has_many :costs, through: :activities
end

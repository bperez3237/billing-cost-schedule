class Subcontractor < ApplicationRecord
    has_many :activities
    has_many :locations, through: :activities
    has_many :costs, through: :activities
end

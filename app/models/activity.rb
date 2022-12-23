class Activity < ApplicationRecord
    belongs_to :subcontractor, optional: true
    belongs_to :location, optional: true
    belongs_to :cost, optional: true

end

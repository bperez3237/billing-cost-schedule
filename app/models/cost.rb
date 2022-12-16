class Cost < ApplicationRecord
    has_many :activities
    has_many :subcontractors, through: :activities
    has_many :locations, through: :activities
    has_one :cost_schedule

    def production_rate
        self.quantity / self.manhours
    end

    def cost_per_unit
        self.forecast / self.quantity
    end

    def remaining_quantity 
        self.quantity - self.quantity_to_date
    end

    def remaining_cost
        self.forecast - self.spent_to_date
    end
end

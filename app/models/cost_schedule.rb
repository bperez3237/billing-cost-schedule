class CostSchedule < ApplicationRecord
    belongs_to :cost


    def final_cost
        self.previous_cost + self.december + self.january + self.february + self.march + self.april + self.may + self.june + self.july + self.august + self.september + self.october
    end
end

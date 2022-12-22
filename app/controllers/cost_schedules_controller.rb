class CostSchedulesController < ApplicationController

    def index
        @cost_schedules = CostSchedule.all
        render json: @cost_schedules
    end

    def show
        @cost_schedule = CostSchedule.find(params[:id])
        render json: @cost_schedule
    end
    
end

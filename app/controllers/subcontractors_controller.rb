class SubcontractorsController < ApplicationController

    def index 
        subcontractors = Subcontractor.all
        render json: subcontractors
    end

    def show
        subcontractor = Subcontractor.find(params[:id])
        render json: subcontractor
    end
end

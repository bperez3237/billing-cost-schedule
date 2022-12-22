class CostsController < ApplicationController

    def index
        @costs = Cost.all
        render json: @costs
    end

    def show
        @cost = Cost.find(params[:id])
        render json: @cost
    end
end

class CampersController < ApplicationController

    # GET /campers
    def index
        campers = Camper.all
        render json: campers, except: :activity
    end

    # GET /campers/:id
    def show
        camper = Camper.find(params[:id])
        render json: camper
    end

    #POST /campers
    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private

    def camper_params
        params.permit(:name, :age)
    end
end

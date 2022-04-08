class CampersController < ApplicationController

    # GET /campers
    def index
        render json: Camper.all
    end

    # GET /campers/:id
    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: GetIdCamperSerializer
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

class CaregiversController < ApplicationController
    before_action :set_caregiver, only: :show
    def create
        caregiver = Caregiver.create(caregiver_params)
        if caregiver.valid?
            render json: { user: CaregiverSerializer.new(caregiver) }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def show
        render json: { user: CaregiverSerializer.new(@caregiver) }, status: :ok
    end

    private
    def set_caregiver
        @caregiver = Caregiver.find(params[:id])
    end

    def caregiver_params
        params.require(:caregiver).permit(:first_name, :last_name, :email, :password)
    end
end
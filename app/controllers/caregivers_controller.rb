class CaregiversController < ApplicationController

    def create
        caregiver = Caregiver.create(caregiver_params)
        if caregiver.valid?
            render json: { user: CaregiverSerializer.new(caregiver) }, status: :created
        else
            print(caregiver)
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private

    def caregiver_params
        params.require(:caregiver).permit(:first_name, :last_name, :email, :password)
    end
end
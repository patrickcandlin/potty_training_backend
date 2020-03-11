class CaregiversController < ApplicationController

    def create
        caregiver = Cargiver.new(params(:caregiver))
        if(caregiver.save)
            # send some response back
        end
    end

    private

    def caregiver_params
        params.require(:caregiver).permit(:first_name, :last_name, :email, :password)
    end
end
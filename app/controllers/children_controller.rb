class ChildrenController < ApplicationController

    def create
        child = Child.create(child_params)
        if child.valid?
            render json: { child: ChildSerializer.new(child) }, status: :created 
        else
            render json: { error: 'child profile was not created' }, status: :not_acceptable  
        end
    end

    private
    def child_params
        params.require(:child).permit(:name, :birthday, :secret)
    end
    
end
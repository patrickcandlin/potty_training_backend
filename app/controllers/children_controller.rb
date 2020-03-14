class ChildrenController < ApplicationController
    before_action :set_child, only: [:show, :list_potties] 
    def create
        child = Child.create(child_params)
        if child.valid?
            render json: { child: ChildSerializer.new(child) }, status: :created 
        else
            render json: { error: 'child profile was not created' }, status: :not_acceptable  
        end
    end

    def show
        render json: { child: ChildSerializer.new(@child) }, status: :ok
    end

    def list_potties
        render json: @child.list_potties
    end

    private
    def child_params
        params.require(:child).permit(:name, :birthday, :secret)
    end
    
    def set_child
        @child = Child.find(params[:id])
    end

end
class ChildrenController < AppplicationController

    def create
        child = Child.create(child_parmas)
        if child.valid?
            render json: { child: ChildSerializer.new(child) }, status: :created 
        else
            render json: { error: 'child profile was not created' }, status: :not_acceptable  
        end
    end

    private
    def child_parmas
        parmas.require(:child).permit(:name, :birthdate, :secret)
    end
    
end
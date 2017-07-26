class CoachesController < ApplicationController
    def new
        @coach = Coach.new
    end

    def create
        @coach = Coach.new(coach_params)
        if @coach.save
            redirect_to home_path
        else
            render :new
        end
        
    end

    def show
        @coach = Coach.find(params[:id])
    end
    

    private

    def coach_params
        params.require(:coach).permit(:name, :email, :password, :password_confirmation)
    end
    
    
end

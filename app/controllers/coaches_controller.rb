class CoachesController < ApplicationController
    def new
        @coach = Coach.new
    end

    def create
        @coach = Coach.new(coach_params)
        if @coach.save
            redirect_to players_path
        else
            render :new
        end
        
    end

    private

    def coach_params
        params.require(:coach).permit(:name, :email, :password, :password_confirmation)
    end
    
    
end

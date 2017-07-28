class CoachesController < ApplicationController
    def new
        @coach = Coach.new
    end

    def create
        @coach = Coach.new(coach_params)
        if @coach.save
            session[:user_id] = @coach.id
            flash[:notice] = "You have successfully signed up!"
            redirect_to root_path
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

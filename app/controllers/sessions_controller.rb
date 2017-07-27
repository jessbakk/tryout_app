class SessionsController < ApplicationController
    def new
    end

    def create
        coach = Coach.find_by(email: params[:email])

        if coach && coach.authenticate(params[:password])
            session[:user_id] = coach.id
            redirect_to home_path, notice: 'Logged in!'
        else 
            flash.now.alert = 'Invalid login credentials - try again!'
            render :new
        end

    end
    
    def destroy
        session[:user_id] = nil
        redirect_to players_path, notice: 'Logged out.'
    end

    def show
    end
    
end

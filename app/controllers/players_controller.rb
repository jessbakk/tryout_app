class PlayersController < ApplicationController
    before_action :set_player, only: [:show, :edit, :update, :destroy]
    before_action :authorize, except: [:index]


    def index
        @players = Player.all
    end


    def new
        @player = Player.new
    end
    
    def create
        @player = Player.new(player_params)
        @team = Team.first.id
        @player[:team_id] = @team
        if @player.save
            redirect_to players_path
        else
            render :new
        end
        
    end


    def edit
        @player = Player.find(params[:id])
    end
    
    def update
       @player = Player.find(params[:id])
        if 
            @player.update_attributes(player_params)
            redirect_to player_path
        else
            render :edit
        end
            
    end


    def destroy
        @player = Player.find(params[:id])
        @player.destroy
            redirect_to players_path
    end
    
    def show
        @player = Player.find(params[:id])
    end

    private

    def player_params
      params.require(:player).permit(:name, :grade, :number, :position1, :position2, :position3, :coordinated, :club_exp, :image)
    end

    def set_player
        @player = Player.find(params[:id])
    end



end

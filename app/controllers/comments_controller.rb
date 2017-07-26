class CommentsController < ApplicationController
    before_action :authorize

    def index
        @player = Player.find(params[:player_id])
        @comments = player.comments
    end
    
    
    def new
         @player = Player.find(params[:player_id])
         @comment = Comment.new
    end
    
    def create
        @comment = Comment.new(comment_params)
        @comment.player_id = params[:player_id]
        @comment.coach_id = current_coach.id

        if @comment.save
            redirect_to player_path(params[:player_id])
        else
            render :new
        end
        
    end

    def edit
        @comment = Comment.find(params[:id])
    end



    def show
        @player = Player.find(params[:player_id])
        @coach = Coach.find(param[:coach_id])
        @comment = Comment.new
    end

    private

    def comment_params
        params.require(:comment).permit( :comment )
    end
    

    

end

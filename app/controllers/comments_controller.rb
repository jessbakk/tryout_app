class CommentsController < ApplicationController
    
    def index
        @player = Player.find(params[:player_id])
        @comments = player.comments
    end
    
    
    def new
         @comment = Comment.new
         @player = Player.find(params[:player_id])
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
        @comment = Comment.find(params[:id])
    end

    private

    def comment_params
        params.require(:comment).permit( :comment )
    end
    

    

end

class CommentsController < ApplicationController

    def index 
        home = Home.find(params[:home_id])
        comments = home.comments
        render json: comments
    end 

    def create 
        comment = Comment.new(comment_params)

        if comment.save 
            render json: comment 
        end 
    end 

    def update 
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end 

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        head :ok
    end 

    


    private 

    def comment_params 
        params.require(:comment).permit(:content, :home_id)
    end 
end

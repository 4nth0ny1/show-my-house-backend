class HomesController < ApplicationController

    def index 
        homes = Home.all
        render json: homes
    end 

    def create 
        home = Home.new(home_params)

        if home.save
            render json: home
        end 

    end 

    def update 
        home = Home.find(params[:id])

        home.update(home_params)

        render json: home

    end 

    def destroy 
        home = Home.find(params[:id])
        home.destroy

        head :ok
    end 


    private 

    def home_params 
        params.require(:home).permit(:address, :description, :price)    
    end
end

class HelpmesController < ApplicationController

    def new
        @helpme = Helpme.new
    end
    def create
        @city = request.location.city
        @helpme = Helpme.new(params.require(:helpme).permit(:title, :description, :name, :state, :priority, :address, :contact))
        @helpme.city = @city
        if @helpme.save
            flash[:notice] = "Help Request is successfully created"
            redirect_to root_path
        else
            render 'new' 
        end   
    end
end

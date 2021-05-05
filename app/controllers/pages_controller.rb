class PagesController < ApplicationController

    def home
        @city = request.location.city
        @helpall = Helpme.all 
        @todayscase = Helpme.where("created_at >= ?", Time.zone.now.beginning_of_day)
        @helpurgent = @todayscase.where("priority == ?", "High")
        @value_priority = params[:priority]
        @value_state = params[:state]
        if params[:urgency].blank?
            if params[:priority].blank? && params[:state].blank? 
                @helpme = Helpme.order("created_at DESC").paginate(page: params[:page], per_page: 15)
            elsif params[:state].blank?
                @helpme = Helpme.where("lower(priority) LIKE :priority", {:priority => "%#{params[:priority].downcase}%"}).order("created_at DESC").paginate(page: params[:page], per_page: 15)
            elsif params[:priority].blank?
                @helpme = Helpme.where("lower(state) LIKE :state", {:state => "%#{params[:state].downcase}%"}).order("created_at DESC").paginate(page: params[:page], per_page: 15)
            end
        else
            @helpme = @todayscase.where("priority == ?", "High").order("created_at DESC").paginate(page: params[:page], per_page: 15)
        end    
        @state = State.all
    end
end
class Api::TeamsController < ApplicationController
    
    def index 
        @teams = Team.all
        render json: @teams
    end
    
    def create
        @team = Team.new(team_params)
        if @team.save
            render json: @team, status: :created
        else
            render json: @team.errors, status: :unprocessable_entity
        end
    end

    private 
        def team_params
            params.permit(:name, :description)
        end 

end

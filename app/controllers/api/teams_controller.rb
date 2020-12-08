class Api::TeamsController < ApplicationController
    
    def index 
        @teams = Team.all
        # render json: @teams
        render json: @teams, include: ['members']
    end
    
    def create
        @team = Team.new(team_params)
        if @team.save
            render json: @team, status: :created
        else
            render json: @team.errors, status: :unprocessable_entity
        end
    end

    def delete
        @team.destroy
    end
    
    private 
        def team_params
            params.permit(:name, :description)
        end 

end

class Api::TeamsController < ApplicationController
    before_action :set_team, only: [:show, :update, :delete]

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
        @team.members.each do |m| 
            m.destroy
        end 
        @team.delete
    end
    
    private 

    def set_team
        @team = Team.find(params[:id])
      end
  
        def team_params
            params.permit(:name, :description)
        end 

end

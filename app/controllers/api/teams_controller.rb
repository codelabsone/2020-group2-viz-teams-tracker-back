class TeamsController < ApplicationController
    def create
        @team = TeamsService.create(team_params)
        @team.save

    end

    private 
        def team_params
            params.require(:team).permit(:name, :description)
        end 

end

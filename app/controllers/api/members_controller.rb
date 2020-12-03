class MembersController < ApplicationController
    def index 
        @teams = Team.all
        render json: @members
    end
    
    def create
        @member = Member.new(member)
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

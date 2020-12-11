class Api::MembersController < ApplicationController
        def index 
            @members = Member.all
            render json: @members
        end
        
        def create
            @member = Member.new(member_params)
            if @member.save
                render json: @member, status: :created
            else
                render json: @member.errors, status: :unprocessable_entity
            end
        end
    
        def delete
            @member.destroy
        end
        
        private 
            def member_params
                params.permit(:image, :firstName, :lastName, :jobTitle, :team_id)
            end 
    
    end
    
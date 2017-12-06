class MilestonesController < ApplicationController
	before_action :set_project

	def create
		@milestone = @project.milestones.create(milestone_params)
		redirect_to @project
	end 

	def destroy 
		@milestone = @project.milestones.find(params[:id])
		if @milestone.destroy
			flash[:success] = "Milestone Deleted"
		else
			flash[:error] = "Milestone item couldn't be deleted"
		end 
		redirect_to @project
	end 
	def show
		@milestone = @project.milestones.find(params[:id])
	end 

private

def milestone_params 
	params.require(:milestone).permit(:content, :due)
end
def set_project 
	@project = Project.find(params[:project_id])
end 

end
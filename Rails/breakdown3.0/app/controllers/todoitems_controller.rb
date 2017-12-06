class TodoitemsController < ApplicationController
	before_action :set_todoitem, except: [:create]

	def create
		@project = Project.find(params[:project_id])
		@milestone = Milestone.find(params[:milestone_id])
		@todoitem = @milestone.todoitems.create(todoitems_params)
		redirect_back(fallback_location: 'project')
end 

	def destroy 
		if @todoitem.destroy
			flash[:success] = "Milestone Deleted"
		else
			flash[:error] = "Milestone item couldn't be deleted"
		end 
		redirect_to @project
	end 

	def complete 
		@project = Project.find(params[:project_id])
		@todoitem.update_attribute(:completed_at, Time.now)
		redirect_to @project, notice: 'Booyah!'
	end 
private

def set_todoitem
		@todoitem = Todoitem.find(params[:id])

end
def todoitems_params 
	params.require(:todoitem).permit(:description, :completed)
end


end


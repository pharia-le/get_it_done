class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :destroy]
    
    def index
        @incomplete_projects = current_user.projects.incomplete
        @complete_projects = current_user.projects.complete
    end

    def show
    end
    
    def new
        @project = Project.new
        @project.user_projects.build
        2.times {@project.tasks.build}
    end

    def create
        @project = current_user.projects.build(project_params)
        if @project.save
            redirect_to @project
        else
            render :new
        end
    end

    def edit
    end

    def update
        binding.pry
        if @project.update(project_params)
            redirect_to @project
        else
            render :edit
        end
    end

    def destroy
        @project.destroy
        redirect_to projects_path
    end

    private
    
    def set_project
        @project = Project.find_by_id(params[:id])
    end

    def project_params
        params.require(:project).permit(
            :title,
            :objective,
            :deadline,
            :complete,
            :tasks_attributes => [
                :name,
                :priority,
                :turnaround_time,
                :done,
                :reminder,
                :id,
                :_destroy,
                circumstance_ids: []
                ],
            :user_projects_attributes => [
                :aof,
                :user_id,
                :project_id,
                :id
                ]
             )
    end
end

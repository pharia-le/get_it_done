class ProjectsController < ApplicationController
    
    def index
        @personal_up = current_user.user_projects.personal
        @business_up = current_user.user_projects.business
    end

    def show
        @project = Project.find_by_id(params[:id])
    end
    
    def new
        @project = Project.new
        @project.tasks.build
        @project.tasks.build
        @project.user_projects.build
    end

    def create
        @project = current_user.projects.build(project_params)
        if @project.save
            redirect_to @project
        else
            render :new
        end
        # binding.pry
        # user_project = current_user.user_projects.build
        # @project = Project.new(project_params)
        # if @project.save
        #     user_project.project = @project
        #     user_project.category = params[:project][:user_project][:category]
        #     user_project.save
        #     redirect_to @project
        # else
        #     render :new
        # end
    end

    def edit
        @project = Project.find_by_id(params[:id])
    end

    def update
        @project = Project.find_by_id(params[:id])
        if @project.update(project_params)
            redirect_to @project
        else
            render :edit
        end
    end

    def destroy
        Project.find_by_id(params[:id]).destroy
        redirect_to projects_path
    end

    def project_params
        params.require(:project).permit(
            :title,
            :objective,
            :deadline,
            :complete,
            :priority,
            :tasks_attributes => [
                :name,
                :priority,
                :turnaround_time,
                :done,
                :reminder,
                :_destroy
                ],
            :user_projects_attributes => [
                :category,
                :user_id,
                :project_id
                ]
             )
    end
end

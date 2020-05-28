class ProjectsController < ApplicationController
    
    def index
        @projects = current_user.projects
    end

    def show
        @project = Project.find_by_id(params[:id])
    end
    
    def new
        @project = current_user.projects.build
    end

    def create
        project = Project.new(project_params)
        if project.save
            current_user.user_projects.build(project: project).save
            redirect_to project
        else
            render :new
        end
    end

    def edit
        @project = Project.find_by_id(params[:id])
    end

    def update
        project = Project.find_by_id(params[:id])
        if project.update(project_params)
            redirect_to project
        else
            render :edit
        end
    end

    def destroy
        Project.find_by_id(params[:id]).destroy
        redirect_to projects_path
    end

    def project_params
        params.require(:project).permit(:name,:objective,:due_date)
    end
end

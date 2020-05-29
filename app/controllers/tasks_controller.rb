class TasksController < ApplicationController

    def index
        @projects = current_user.projects
    end

    def new
        @project = Project.find_by_id(params[:project_id])
    end

    def create
        project = Project.find_by_id(params[:task][:project_id])
        task = project.tasks.build(task_params)
        if task.save
            redirect_to project
        else
           render :new 
        end
    end

    def show
        @task = Task.find_by_id(params[:id])
    end

    def edit
        @task = Task.find_by_id(params[:id])
    end

    def update
        task = Task.find_by_id(params[:id])
        if task.update(task_params)
            redirect_to task.project
        else
            render :edit
        end
    end

    def destroy
        Task.find_by_id(params[:id]).destroy
        redirect_to tasks_path
    end

    def task_params
        params.require(:task).permit(:name, :priority, :turnaround_time)
    end
end

class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
        if params[:project_id]
            @project = Project.find_by_id(params[:project_id])
            if @project.nil?
                redirect_to tasks_path, alert: "Project not found"
            else
                set_tasks_by_priority(@project.tasks)
            end    
        elsif params[:search]
            parameters = params[:search].downcase
            @tasks = current_user.tasks.where('lower(name) LIKE ?', "%#{parameters}%")
            set_tasks_by_priority(@tasks)
        else
            set_tasks_by_priority(current_user.tasks)
        end
    end

    def new
        @project = Project.find_by_id(params[:project_id])
        @task = @project.tasks.build
    end

    def create
        @project = Project.find_by_id(params[:task][:project_id])
        @task = @project.tasks.build(task_params)
        if @task.save
            redirect_to @project
        else
           render :new 
        end
    end

    def show
    end

    def edit
    end

    def update
        if @task.update(task_params)
            redirect_to @task.project
        else
            render :edit
        end
    end

    def destroy
        @project = @task.project
        @task.destroy
        redirect_to @project
    end

    private

    def set_task
        @task = Task.find_by_id(params[:id])
    end

    def set_tasks_by_priority(tasks)
        @low = tasks.not_done.low
        @med = tasks.not_done.med
        @high = tasks.not_done.high
        @done = tasks.is_done
    end

    def task_params
        params.require(:task).permit(
            :name,
            :priority,
            :done,
            :reminder,
            circumstance_ids:[]
            )
    end
end

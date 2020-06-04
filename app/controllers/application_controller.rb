class ApplicationController < ActionController::Base

    def home
        if current_user
            @high_priority_tasks = current_user.tasks.not_done.high_priority
            @due_soon_projects = current_user.projects.not_completed.due_soon
            @tasks_under_fifteen = current_user.tasks.not_done.under_fifteen
            @tasks_today = current_user.tasks.not_done.today
        end
    end
end

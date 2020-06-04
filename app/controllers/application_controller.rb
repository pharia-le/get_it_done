class ApplicationController < ActionController::Base

    def home
        if current_user
            @focus = current_user.user_projects.focus
            @warning = current_user.projects.incomplete.due_soon
            @today = current_user.tasks.not_done.today
        end
    end
end

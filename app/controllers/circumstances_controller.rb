class CircumstancesController < ApplicationController

    def index
        @circumstances = current_user.circumstances.by_create.uniq
    end
end
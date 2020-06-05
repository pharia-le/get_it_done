class CircumstancesController < ApplicationController

    def index
        @circumstances = current_user.circumstances
    end

end
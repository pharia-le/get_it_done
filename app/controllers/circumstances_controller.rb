class CircumstancesController < ApplicationController

    def index
        @circumstances = Circumstance.all
    end

end
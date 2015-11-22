class SearchController < ApplicationController
    
    def search
    end
    
    def results
        @query = params[:query]
        @results = Aberesource.where("description = ?", @query)
    end
end

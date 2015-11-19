class SearchController < ApplicationController
    
    def search
    end
    
    def results
        @query = params[:query]
    end
end

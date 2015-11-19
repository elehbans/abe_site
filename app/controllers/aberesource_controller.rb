class AberesourceController < ApplicationController
    
    def add
        @to_add = Aberesource.new
        render :add
    end
    
    def user_home
        @to_add = Aberesource.new
        @bob = params[:aberesource][:user_id]
        @to_add.user_id = params[:aberesource][:user_id]
        @to_add.filename = params[:aberesource][:filename]
        @to_add.description = params[:aberesource][:description]
        @to_add.save!

        @just_added = Aberesource.where("user_id = ?", @bob.to_i )
        render :user_home
    end

end

class AberesourceController < ApplicationController
    
    def add
        @to_add = Aberesource.new
        render :add
    end
    
    def just_added
        @to_add = Aberesource.new
        @to_add.user_id = params[:aberesource][:user_id]
        @to_add.filename = params[:aberesource][:filename]
        @to_add.description = params[:aberesource][:description]
        @to_add.save!
        @timestamp = @to_add["created_at"]

        @just_added = Aberesource.find_by("created_at = ?", @timestamp)
        render :just_added
    end
    
    def user_home
        @user = "19"
        @added_by_user = Aberesource.where("user_id = ?", @user)
        render :user_home
    end
    

end

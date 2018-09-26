class CommentUpdatesController < ApplicationController
    before_action :require_log_in

    def new

    end

    def create
        binding.pry
        @update = CommentUpdate.create(update_params)
        @update.save
        if params[:comment][:status] == "Closed"
            comment = Comment.find(params[:comment_update][:comment_id])
            comment.status = "Closed"
            comment.save
        end
        redirect_to user_path(session[:user_id])
    end
    private
    def status_params
        params.require(:comment).permit(:status)
    end

    def update_params
        params.require(:comment_update).permit(:update_date, :update_type, :phone, :employee_name, :current_update, :comment_id)
    end
end

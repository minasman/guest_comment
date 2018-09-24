class CommentsController < ApplicationController
    before_action :require_log_in
    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
        @guest = Guest.new
    end

    def create
        @guest = Guest.find_or_create_by(email: params[:guest][:email])
        @guest.update(guest_params)
        @comment = Comment.create(comment_params)
        @comment.guest_id = @guest.id
        @comment.save
        redirect_to user_path(session[:user_id])
    end

    def show
        @comment = Comment.find(params[:id])
    end

    private
    def comment_params
        params.require(:comment).permit(:visit_date, :visit_time, :comment_type, :source, :urgent, :case_number, :first_issue, :first_issue_comment, :second_issue, :second_issue_comment, :third_issue, :third_issue_comment, :contact_type, :visit_type, :employee_named, :status, :guest_id, :store_id)
    end

    def guest_params
        params.require(:guest).permit(:first_name, :last_name, :phone, :email)
    end


end

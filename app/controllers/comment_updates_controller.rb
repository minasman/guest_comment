class CommentUpdatesController < ApplicationController
    before_action :require_log_in

    def new
        @update = CommentUpdate.new
        @comment = Comment.find(params[:id])
    end

    def create
        @update = CommentUpdate.new
        @comment = Comment.find(params[:comment])
        render new
    end
end

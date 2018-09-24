class CommentUpdatesController < ApplicationController
    before_action :require_log_in

    def new
        @update = CommentUpdate.new
    end
end

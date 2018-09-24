class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        raise.params.inspect
    end


end

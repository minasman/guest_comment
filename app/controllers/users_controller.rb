class UsersController < ApplicationController
    before_action :require_log_in, except: [:new, :create, :home]
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
        @user = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        binding.pry
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show

    end

    def edit

    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user.destroy
        redirect_to new_user_path
    end

    private
        def set_user
            @user = User.find_by(id: params[:id])
        end

        def user_params
            params.require(:user).permit(:first_name, :last_name, :username, :position, :email, :password)
        end
end

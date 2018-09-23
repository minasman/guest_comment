class UsersController < ApplicationController

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

    end

    def destroy

    end

    private
        def set_user
            @user = User.find_by(id: params[:id])
        end

        def user_params
            params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
        end

end

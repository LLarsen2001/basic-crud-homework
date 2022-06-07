class Api::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        render json: User.all
    end

    def show 
       
        user = User.find(params[:id])
        render json: @user
    end

    def destroy
        # user = User.find(params[:id])
        render json: @user.destroy
    end

    def create
        puts "create params:"
        puts params
        user = User.new(params.require(:user).permit(:username, :age))
        if(user.save)
            render json: user
        else
            render json: {error: user.errors.full_messages}, status: 422
        end

    end

    def update 
        
        if @user.update(params.require(:user).permit(:username, :age))
            render json: @user
        else 
            render json: {errors: @user.errors.full_messages}, status: 422
        end

    end

    private

   def set_user
    @user = User.find(params[:id])
   end
end


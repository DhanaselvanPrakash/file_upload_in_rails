class RegisterController < ApplicationController
  def index
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.js
        format.html { redirect_to root_path, notice: "User added Successfully" }
      else
        if !@user.values_not_valid?
          format.html { redirect_to create_user_path, user: @user, notice: "All fields are required" }
        else
          format.html { redirect_to create_user_path, user: @user, notice: "Email Id may already exists" }
        end
      end
    end
  end

  def new
    @user = User.new
  end

  def show
  end

  def user
    begin
      @user = User.find(params[:id])
    rescue => err
      err
    end
  end

  def edit
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email_id, :gender, :role, :contact, :terms, :profile)
    end
end

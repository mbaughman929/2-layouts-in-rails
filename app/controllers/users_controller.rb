class UsersController < ApplicationController
  def index
  	@user = User.all
  end

  def create
  	@user_create = User.create(first_name:params[:first], last_name:params[:last], email_address:params[:email], password:params[:password])

  	redirect_to "/"
  end

  def new

  end

  def show
  	@user_show = User.find(params[:id])
  end

  def edit
  	@user_edit = User.find(params[:id])
  end

  def update
    @user_update = User.find(params[:id]).update(first_name:params[:first], last_name:params[:last], email_address:params[:email], password:params[:password])

    redirect_to "/"
  end

  def destroy
    @user_delete = User.find(params[:id]).destroy

    redirect_to "/"
  end


end

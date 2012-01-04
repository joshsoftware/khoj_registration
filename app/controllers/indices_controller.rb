class IndicesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_user

  def index
    @indices = @user.indices
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def load_user
    @user = User.find_by_id(params[:user_id]) 
    unauthorized_user unless @user == current_user
  end

end

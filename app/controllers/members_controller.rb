class MembersController < ApplicationController
  def index
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

  def show
  end

  private
  def member_params
    params.require(:member).permit(:name, :infomation, :portfolio).merge(master_id: current_user.id, article_id: params[:article_id])
end

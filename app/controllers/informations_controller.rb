class InformationsController < ApplicationController
  before_action :find_information, only: [:edit, :update, :destroy]
  before_action :is_admin?

  def edit
  end

  def update
    @information.update(information_params)
    if @information.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def information_params
    params.require(:information).permit(:content)
  end

  def find_information
    @information = Information.find(params[:id])
  end

  def is_admin?
    unless current_user.admin
      flash[:notice] = "You are not authorized to perform this action."
      redirect_to root_path
    end
  end
end

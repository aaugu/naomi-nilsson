class DashboardController < ApplicationController
  before_action :is_admin?

  def index
    @posts = Post.all.order(created_at: :desc)
    @schedule = Information.where(name: "Horaires").first.content
    @availability = Information.where(name: "Disponibilités").first.content
    @paragraph_1 = Information.where(name: "Paragraphe 1").first.content
    @paragraph_2 = Information.where(name: "Paragraphe 2").first.content
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def is_admin?
    unless current_user.admin
      flash[:notice] = "You are not authorized to perform this action."
      redirect_to root_path
    end
  end
end

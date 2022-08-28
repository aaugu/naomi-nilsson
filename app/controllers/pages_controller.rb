class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact, :news]

	def home
	end

	def about
	end

	def contact
    @schedule = Information.where(name: "Horaires").first.content
    @availability = Information.where(name: "Disponibilités").first.content
	end

  def news
    @posts = Post.all.order(created_at: :desc)
    @paragraph_1 = Information.where(name: "Paragraphe 1").first.content
    @paragraph_2 = Information.where(name: "Paragraphe 2").first.content
  end
end

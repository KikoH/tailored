class IntrosController < ApplicationController
	def new
		@intro = Intro.new
	end

	def create
		@intro = Intro.new(intro_params)
		if @intro.save
			redirect_to home_path
		else
			render 'new'
		end
	end

	def edit
		@intro = Intro.find(params[:id])
	end

	def update
		@intro = Intro.find(params[:id])
		@intro.update_attributes(intro_params)
		redirect_to home_path
	end

	private
	def intro_params
		params.require(:intro).permit(:title, :description, :image)
	end
end

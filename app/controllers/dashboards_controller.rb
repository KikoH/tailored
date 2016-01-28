class DashboardsController < ApplicationController
	def index
		@intros = Intro.all
		@abouts = About.all
		@teams = Team.all
		@testimonials = Testimonial.all
	end
end

class DashboardsController < ApplicationController
	def index
		@intros = Intro.all
		@abouts = About.all
	end
end

class DashboardsController < ApplicationController
	def index
		@intros = Intro.all
		@abouts = About.all
		@teams = Team.all
	end
end

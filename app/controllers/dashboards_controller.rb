class DashboardsController < ApplicationController
	def index
		@intros = Intro.all
	end
end

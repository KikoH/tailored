class PortfoliosController < ApplicationController
	def index
		@portfolios = Portfolio.all.offset(6)
		render layout: false
	end

	def show
		@portfolio = Portfolio.find(params[:id])
		render layout: false
	end
end

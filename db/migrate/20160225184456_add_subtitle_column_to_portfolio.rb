class AddSubtitleColumnToPortfolio < ActiveRecord::Migration
  def change
  	add_column :portfolios, :category, :string
  	add_column :portfolios, :subtitle, :string
  end
end

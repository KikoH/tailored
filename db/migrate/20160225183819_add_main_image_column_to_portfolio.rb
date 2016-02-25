class AddMainImageColumnToPortfolio < ActiveRecord::Migration
  def change
  	add_column :portfolios, :main_image, :string
  end
end

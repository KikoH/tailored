class RemoveImagesColumnFromPortfolio < ActiveRecord::Migration
  def change
  	remove_column :portfolios, :images, :string
  	remove_column :portfolios, :image
  end
end

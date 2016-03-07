class Image < ActiveRecord::Base
	belongs_to :portfolio
	belongs_to :intro
	mount_uploader :image, ImageUploader
end

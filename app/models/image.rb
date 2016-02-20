class Image < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :intro
	belongs_to :portfolio
end

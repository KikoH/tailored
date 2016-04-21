class Image < ActiveRecord::Base
	belongs_to :portfolio
	belongs_to :intro
	mount_uploader :image, ImageUploader

	validates :image, file_size: { less_than_or_equal_to: 500.kilobytes.to_i }
end

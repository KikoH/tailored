class Intro < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :images
	accepts_nested_attributes_for :images
end

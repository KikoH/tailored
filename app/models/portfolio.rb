class Portfolio < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	default_scope { order('created_at ASC') }
end

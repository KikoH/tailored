class Portfolio < ActiveRecord::Base
	has_many :images
	accepts_nested_attributes_for :images

	default_scope { order('created_at ASC') }
end

class PostDetail < ApplicationRecord
	attr_accessor :posttext, :postid, :created_at, :updated_at

	belongs_to :post
end

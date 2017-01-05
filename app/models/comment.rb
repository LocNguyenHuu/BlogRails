class Comment < ApplicationRecord
	attr_accessor :comment, :commenterID, :comment_date, :deleted, :created_at, :updated_at

	belongs_to :user
end

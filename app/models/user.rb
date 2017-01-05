class User < ApplicationRecord
	attr_accessor :username, :useremail, :createdate, :active, :created_at, :updated_at

	has_many :post
	has_many :comment
end

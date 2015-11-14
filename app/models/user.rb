class User < ActiveRecord::Base
	has_many :stashes
	has_many :games
end

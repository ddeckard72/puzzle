class Stash < ActiveRecord::Base
	belongs_to :user
	has_many :games

	has_attached_file :image
	validates :image, attachment_presence: true
	
end

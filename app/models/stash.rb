class Stash < ActiveRecord::Base
	belongs_to :user
	has_many :games

	has_attached_file :image
				#	  styles: {standard: "440x440!"}
	validates :image, attachment_presence: true
	do_not_validate_attachment_file_type :image

end

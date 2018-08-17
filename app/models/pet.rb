class Pet < ApplicationRecord
	belongs_to :user
	has_many :bookings
	has_many :users, through: :bookings

  	geocoded_by :address
  	after_validation :geocode, if: :will_save_change_to_address?

	mount_uploader :photo, PhotoUploader
	validates :category, inclusion: { in: ["Pig","Dog","Cat","Horse","Hampster","Rat","Duck","Camel","Deer","Penguin","Kangaroo","Bird"] }
end

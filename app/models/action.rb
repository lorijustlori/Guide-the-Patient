class Action < ApplicationRecord
	belongs_to :remedy
	has_many :tasks

	validates :activity, :number, :unit, presence: true
	validates :timeline, inclusion: { in: [ "before", "after" ]}
end

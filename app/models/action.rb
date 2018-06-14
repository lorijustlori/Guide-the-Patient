class Action < ApplicationRecord
	belongs_to :remedy

	validates :activity, :number, :unit, presence: true
	validates :timeline, inclusion: { in: [ "before", "after" ]}
end



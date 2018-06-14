class Action < ApplicationRecord
	belongs_to :remedy

	validates_prescence_of :activity, :number, :unit, :before, :after
	validates :unit, inclusion: { in: [ "before", "after" ]}
end



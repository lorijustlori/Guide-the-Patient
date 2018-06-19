class Task < ApplicationRecord
	belongs_to :action 
	belongs_to :procedure
end

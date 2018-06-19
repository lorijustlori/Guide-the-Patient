class Task < ApplicationRecord
	belongs_to :action
	belongs_to :procedure

  scope :before, -> { joins(:procedure).where("tasks.due_at::date < procedures.start_at::date") }
  scope :day_of, -> { joins(:procedure).where("tasks.due_at::date = procedures.start_at::date") }
  scope :after, -> { joins(:procedure).where("tasks.due_at::date > procedures.start_at::date") }
end

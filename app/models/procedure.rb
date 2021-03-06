class Procedure < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  belongs_to :remedy
  has_one :diagnosis
  has_one :ailment, through: :diagnosis
  has_many :tasks

  before_validation :set_uuid, on: :create
  after_create :create_tasks
  after_create :send_email

  def to_param
    uuid
  end

  private

  def set_uuid
    self.uuid = SecureRandom.uuid unless uuid.present?
  end

  def create_tasks
    remedy.actions.each do |action|
      operation = if action.timeline == "before"
                    :-
                  elsif action.timeline == "after"
                    :+
                  end
      time      = action.number.send(action.unit)
      action.tasks.create(
        procedure:  self,
        due_at:     self.start_at.send(operation, time)
      )
    end
  end

  def send_email
    PatientMailer.with(
      patient:    self.patient,
      procedure:  self
    ).schedule_email.deliver_now
  end
end

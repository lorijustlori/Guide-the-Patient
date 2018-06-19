class Procedure < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  belongs_to :remedy
  has_one :diagnosis
  has_one :ailment, through: :diagnosis
  has_many :tasks

  after_create :send_email

  def send_email
    PatientMailer.with(
      patient:    self.patient, 
      procedure:  self
    ).schedule_email.deliver_now
  end
end
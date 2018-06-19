class Procedure < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  belongs_to :remedy
  has_one :diagnosis
  has_one :ailment, through: :diagnosis
  has_many :tasks

  after_create :send_email

  def send_email
    respond_to do |format|
    if @procedure.save
      PatientMail.with(patient: @patient).schedule_email.deliver_now

      format.html { redirect_to(@procedure, notice:'Email was successfully sent to patient')}
      format.json { render json: @procedure status: :saved, location: @procedure }
    else
      format.html { render action: 'new'}
      format.json { render json: @procedure.errors, status: :unprocessable_entity }
    end
    end
  end
end
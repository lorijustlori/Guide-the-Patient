class PatientMailer < ApplicationMailer

	require 'securerandom'
	
  def schedule_email
    @patient 	= params[:patient]
    @procedure 	= params[:procedure]
    mail(to: @patient.email, subject: 'Your Surgery Schedule')

   end
end

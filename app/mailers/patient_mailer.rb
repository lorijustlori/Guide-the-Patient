class PatientMailer < ActionMailer
  default from: 'notifications@example.com'

  def schedule_email
    @patient = params[:patient]
    @procedure = params [:procedure]
    @url = 'http://example.com/login'
    mail(to: @patient.email, subject: 'Your Surgery Schedule')
  end
end

class ProceduresController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def create
  	@diagnosis = Diagnosis.create(diagnosis_params)
  	@procedure = Procedure.new(procedure_params)
  	if @procedure.save!
  		#logic
  		redirect_to root_path
  	else
  		#logic
  end

  def new
    @patients   = Patient.all
    @ailments   = Ailment.all
    @remedies   = Remedy.all
    @physicians = Physician.all
    @hospitals 	= Hospital.all
    @actions		= Action.all
  end

  def show
  end

	private

	def diagnosis_params
		params.required(:procedure).permit(:ailment_id, :remedy_id)
	end

	def procedure_params
		procedure = params.require(:procedure)
		{
			patient_id: procedure[:patient_id],
			physician_id: procedure[:physician_id],
			diagnosis_id: @diagnosis.id,
			date: Date.strptime(procedure[:date], '%m/%d/%Y'),
			start_time: Time.strptime(procedure[:start_time], '%I:%m %p'),
			end_time: Time.strptime(procedure[:end_time], '%I:%m %p')
		}
	end
end

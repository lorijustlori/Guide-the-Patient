class ProceduresController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def create
    @procedure = Procedure.new(procedure_params.except(:ailment_id))
    @diagnosis = @procedure.build_diagnosis(ailment_id: procedure_params[:ailment_id])
  	if @procedure.save && @diagnosis.save
  		redirect_to @procedure
  	else
  		render :new
  	end
  end

  def new
    @patients   = Patient.all
    @ailments   = Ailment.all
    @remedies   = Remedy.all
    @physicians = Physician.all
  end

  def show
    @procedure    = Procedure.find_by!(uuid: params[:uuid])
    @before_tasks = @procedure.tasks.before
    @after_tasks  = @procedure.tasks.after
    @day_of_tasks = @procedure.tasks.day_of
  end

	private

	def procedure_params
		params.require(:procedure)
      .permit(:patient_id, :ailment_id, :physician_id, :remedy_id, :start_at)
	end
end

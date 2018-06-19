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
    @procedure = Procedure.find(params[:id])
    @before_tasks = Action.where(remedy_id: @procedure.remedy.id, timeline: "before")
    @after_tasks = Action.where(remedy_id: @procedure.remedy.id, timeline: "after")

  end

	private

	def procedure_params
		params.require(:procedure)
      .permit(:patient_id, :ailment_id, :physician_id, :remedy_id, :start_at)
	end
end

class ProceduresController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def create
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
  	def remedy_params
  		params.require(:remedy).permit(ailment_ids:[])
  	end

  	def ailment_params
  		params.require(:ailment).permit(remedy_ids:[])
  	end
	end

end

class ProceduresController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def create
  end

  def new
    @patients   = Patient.all
    @ailments   = Ailment.all
    @remedies   = Remedy.all
    @physicians = Physician.all
  end

  def show
  end

end

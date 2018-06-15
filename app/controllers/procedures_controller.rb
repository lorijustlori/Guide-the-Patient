class ProceduresController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def create
  end

  def new
    @patients = Patient.all
    @ailments = Ailment.all
    @remedies = Remedy.all
  end

  def show
  end

end

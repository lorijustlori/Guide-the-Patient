class ProceduresController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
  def create
  end

  def new
  end

  def show
  end

end

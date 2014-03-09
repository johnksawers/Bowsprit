class Api::V1::ScriptsController < ApplicationController

  respond_to :json

  def index
    respond_with Script.all
  end

  def show
    respond_with Script.find(params[:id])
  end
end
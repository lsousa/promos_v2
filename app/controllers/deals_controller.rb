class DealsController < ApplicationController
  def index
    @deals = Deal.hot
    respond_to do |format|
        format.json { render json: @deals }
        format.xml { render xml: @deals }
    end
  end

  def show
  end
end

class ReceiptsController < ApplicationController
  def index
    render json: Receipt.all
  end
end

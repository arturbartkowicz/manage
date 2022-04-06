class ReceiptsController < ApplicationController
  def index
    render json: Receipt.all
  end

  def create
    receipt = Receipt.create(receipt_params)

    if receipt.save
      render json: receipt, status: :created
    else
      render json: receipt.errors, status: :unprocessable_entity
    end
  end

  private

  def receipt_params
    params.require(:receipt).permit(:product, :price, :location, :category, :needful)
  end
end

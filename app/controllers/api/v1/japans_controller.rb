  class Api::V1::JapansController < ApplicationController
  def index
    render json: JapanSerializer.create_japans(Japan.all)
  end

  def create
    japan = Japan.new(japanese_params)
    if japan.save
      render json: JapanSerializer.create_japanese(japan), status: 201
    else
      render json: { error: "This kanji has already been learned!" }, status: :bad_request
    end
  end

  def update
    japan = Japan.find(params[:id])
    japan.update!(japanese_params)
    render json: japan
  end

  def destroy
    render json: Japan.destroy(params[:id]), status: 204
  end

  private
  def japanese_params
    params.require(:japan).permit(:kanji, :definition, :romanji, :id)
  end
end
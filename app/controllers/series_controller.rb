class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :update, :destroy]

  # GET /series
  def index
    @series = Series.all

    render json: @series
  end

  # GET /series/1
  def show
    render json: @series
  end

  # POST /series
  def create
    @series = Series.new(series_params)

    if @series.save
      render json: @series, status: :created, location: @series
    else
      render json: @series.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /series/1
  def update
    if @series.update(series_params)
      render json: @series
    else
      render json: @series.errors, status: :unprocessable_entity
    end
  end

  # DELETE /series/1
  def destroy
    @series.destroy
    render json: {message: 'Series deleted'}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @series = Series.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def series_params
      params.require(:series).permit(:title, :volume_count, :author, :description, :img, :release_year)
    end
end
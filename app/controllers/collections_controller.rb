class CollectionsController < ApplicationController
  before_action :set_series, only: [:show, :update, :destroy]

  # GET /collection
  def index
    @collection = Collection.all

    render json: @collection
  end

  # GET /collection/1
  def show
    render json: @collection
  end

  # POST /collection
  def create
    @collection = Collection.new(series_params)

    if @collection.save
      render json: @collection, status: :created, location: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collection/1
  def update
    if @collection.update(series_params)
      render json: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collection/1
  def destroy
    @collection.destroy
    render json: {message: 'Collection deleted'}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @collection = Collection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def series_params
      params.require(:collection).permit(:title, :volume_count, :author, :description, :release_year)
    end
end

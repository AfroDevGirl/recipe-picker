class PantriesController < ApplicationController
  before_action :set_pantry, only: [:show, :update, :destroy]

  # GET /pantries
  def index
    @pantries = Pantry.all

    render json: @pantries
  end

  # GET /pantries/1
  def show
    render json: @pantry
  end

  # POST /pantries
  def create
    @pantry = Pantry.new(pantry_params)

    if @pantry.save
      render json: @pantry, status: :created, location: @pantry
    else
      render json: @pantry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pantries/1
  def update
    if @pantry.update(pantry_params)
      render json: @pantry
    else
      render json: @pantry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pantries/1
  def destroy
    @pantry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pantry
      @pantry = Pantry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pantry_params
      params.fetch(:pantry, {})
    end
end

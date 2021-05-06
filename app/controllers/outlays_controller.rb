class OutlaysController < ApplicationController
  before_action :set_outlay, only: %i[ show edit update destroy ]

  # GET /outlays or /outlays.json
  def index
    @outlays = Outlay.all
  end

  # GET /outlays/1 or /outlays/1.json
  def show
  end

  # GET /outlays/new
  def new
    @outlay = Outlay.new
  end

  # GET /outlays/1/edit
  def edit
  end

  # POST /outlays or /outlays.json
  def create
    @outlay = Outlay.new(outlay_params)

    respond_to do |format|
      if @outlay.save
        format.html { redirect_to @outlay, notice: "Outlay was successfully created." }
        format.json { render :show, status: :created, location: @outlay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @outlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outlays/1 or /outlays/1.json
  def update
    respond_to do |format|
      if @outlay.update(outlay_params)
        format.html { redirect_to @outlay, notice: "Outlay was successfully updated." }
        format.json { render :show, status: :ok, location: @outlay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @outlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlays/1 or /outlays/1.json
  def destroy
    @outlay.destroy
    respond_to do |format|
      format.html { redirect_to outlays_url, notice: "Outlay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outlay
      @outlay = Outlay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def outlay_params
      params.require(:outlay).permit(:name, :amount, :author_id)
    end
end

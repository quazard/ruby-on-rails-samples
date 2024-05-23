class ReadRunsController < ApplicationController
  before_action :set_read_run, only: %i[ show edit update destroy ]

  # GET /read_runs or /read_runs.json
  def index
    @read_runs = ReadRun.all
  end

  # GET /read_runs/1 or /read_runs/1.json
  def show
  end

  # GET /read_runs/new
  def new
    @read_run = ReadRun.new
  end

  # GET /read_runs/1/edit
  def edit
  end

  # POST /read_runs or /read_runs.json
  def create
    @read_run = ReadRun.new(read_run_params)

    respond_to do |format|
      if @read_run.save
        format.html { redirect_to read_run_url(@read_run), notice: "Read run was successfully created." }
        format.json { render :show, status: :created, location: @read_run }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @read_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /read_runs/1 or /read_runs/1.json
  def update
    respond_to do |format|
      if @read_run.update(read_run_params)
        format.html { redirect_to read_run_url(@read_run), notice: "Read run was successfully updated." }
        format.json { render :show, status: :ok, location: @read_run }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @read_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /read_runs/1 or /read_runs/1.json
  def destroy
    @read_run.destroy!

    respond_to do |format|
      format.html { redirect_to read_runs_url, notice: "Read run was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read_run
      @read_run = ReadRun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def read_run_params
      params.require(:read_run).permit(:run_number, :status)
    end
end

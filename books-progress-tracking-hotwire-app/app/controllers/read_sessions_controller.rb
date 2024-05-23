class ReadSessionsController < ApplicationController
  before_action :set_read_session, only: %i[ show edit update destroy ]

  # GET /read_sessions or /read_sessions.json
  def index
    @read_sessions = ReadSession.all
  end

  # GET /read_sessions/1 or /read_sessions/1.json
  def show
  end

  # GET /read_sessions/new
  def new
    @read_session = ReadSession.new
  end

  # GET /read_sessions/1/edit
  def edit
  end

  # POST /read_sessions or /read_sessions.json
  def create
    @read_session = ReadSession.new(read_session_params)

    respond_to do |format|
      if @read_session.save
        format.html { redirect_to read_session_url(@read_session), notice: "Read session was successfully created." }
        format.json { render :show, status: :created, location: @read_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @read_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /read_sessions/1 or /read_sessions/1.json
  def update
    respond_to do |format|
      if @read_session.update(read_session_params)
        format.html { redirect_to read_session_url(@read_session), notice: "Read session was successfully updated." }
        format.json { render :show, status: :ok, location: @read_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @read_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /read_sessions/1 or /read_sessions/1.json
  def destroy
    @read_session.destroy!

    respond_to do |format|
      format.html { redirect_to read_sessions_url, notice: "Read session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read_session
      @read_session = ReadSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def read_session_params
      params.require(:read_session).permit(:read_pages)
    end
end

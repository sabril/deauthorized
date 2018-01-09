class Users::IssueShutdownsController < ApplicationController
  before_action :set_issue_shutdown, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  layout :resolve_layout

  # GET /issue_shutdowns
  # GET /issue_shutdowns.json
  def index
    @issue_shutdowns = IssueShutdown.all
  end

  # GET /issue_shutdowns/1
  # GET /issue_shutdowns/1.json
  def show
  end

  # GET /issue_shutdowns/new
  def new
    @issue_shutdown = IssueShutdown.new
  end

  # GET /issue_shutdowns/1/edit
  def edit
  end

  # POST /issue_shutdowns
  # POST /issue_shutdowns.json
  def create
    @issue_shutdown = IssueShutdown.new(issue_shutdown_params)

    respond_to do |format|
      if @issue_shutdown.save
        format.html { redirect_to @issue_shutdown, notice: 'Issue shutdown was successfully created.' }
        format.json { render :show, status: :created, location: @issue_shutdown }
      else
        format.html { render :new }
        format.json { render json: @issue_shutdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue_shutdowns/1
  # PATCH/PUT /issue_shutdowns/1.json
  def update
    respond_to do |format|
      if @issue_shutdown.update(issue_shutdown_params)
        format.html { redirect_to @issue_shutdown, notice: 'Issue shutdown was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue_shutdown }
      else
        format.html { render :edit }
        format.json { render json: @issue_shutdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_shutdowns/1
  # DELETE /issue_shutdowns/1.json
  def destroy
    @issue_shutdown.destroy
    respond_to do |format|
      format.html { redirect_to issue_shutdowns_url, notice: 'Issue shutdown was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_shutdown
      @issue_shutdown = IssueShutdown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_shutdown_params
      params.require(:issue_shutdown).permit(:request_made, :id_verification, :authenticated_app_id)
    end

    def resolve_layout
      'user'
    end
end

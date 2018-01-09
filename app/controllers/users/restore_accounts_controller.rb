class Users::RestoreAccountsController < ApplicationController
  before_action :set_restore_account, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  layout :resolve_layout

  # GET /restore_accounts
  # GET /restore_accounts.json
  def index
    @restore_accounts = RestoreAccount.all
  end

  # GET /restore_accounts/1
  # GET /restore_accounts/1.json
  def show
  end

  # GET /restore_accounts/new
  def new
    @restore_account = RestoreAccount.new
  end

  # GET /restore_accounts/1/edit
  def edit
  end

  # POST /restore_accounts
  # POST /restore_accounts.json
  def create
    @restore_account = RestoreAccount.new(restore_account_params)

    respond_to do |format|
      if @restore_account.save
        format.html { redirect_to @restore_account, notice: 'Restore account was successfully created.' }
        format.json { render :show, status: :created, location: @restore_account }
      else
        format.html { render :new }
        format.json { render json: @restore_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restore_accounts/1
  # PATCH/PUT /restore_accounts/1.json
  def update
    respond_to do |format|
      if @restore_account.update(restore_account_params)
        format.html { redirect_to @restore_account, notice: 'Restore account was successfully updated.' }
        format.json { render :show, status: :ok, location: @restore_account }
      else
        format.html { render :edit }
        format.json { render json: @restore_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restore_accounts/1
  # DELETE /restore_accounts/1.json
  def destroy
    @restore_account.destroy
    respond_to do |format|
      format.html { redirect_to restore_accounts_url, notice: 'Restore account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restore_account
      @restore_account = RestoreAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restore_account_params
      params.require(:restore_account).permit(:request_issued, :id_verification, :email_reset, :password_reset, :authenticated_app_id)
    end

    def resolve_layout
      'user'
    end
end

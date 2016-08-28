class CmessagesController < ApplicationController
  before_action :set_cmessage, only: [:show, :edit, :update, :destroy]

  # GET /cmessages
  # GET /cmessages.json
  def index
    @cmessages = Cmessage.all
  end

  # GET /cmessages/1
  # GET /cmessages/1.json
  def show
  end

  # GET /cmessages/new
  def new
    @cmessage = Cmessage.new
  end

  # GET /cmessages/1/edit
  def edit
  end

  # POST /cmessages
  # POST /cmessages.json
  def create
    @cmessage = Cmessage.new(cmessage_params)

    respond_to do |format|
      if @cmessage.save
        format.html { redirect_to @cmessage, notice: 'Cmessage was successfully created.' }
        format.json { render :show, status: :created, location: @cmessage }
      else
        format.html { render :new }
        format.json { render json: @cmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cmessages/1
  # PATCH/PUT /cmessages/1.json
  def update
    respond_to do |format|
      if @cmessage.update(cmessage_params)
        format.html { redirect_to @cmessage, notice: 'Cmessage was successfully updated.' }
        format.json { render :show, status: :ok, location: @cmessage }
      else
        format.html { render :edit }
        format.json { render json: @cmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cmessages/1
  # DELETE /cmessages/1.json
  def destroy
    @cmessage.destroy
    respond_to do |format|
      format.html { redirect_to cmessages_url, notice: 'Cmessage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cmessage
      @cmessage = Cmessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cmessage_params
      params.require(:cmessage).permit(:message, :user_id, :consultant_id)
    end
end

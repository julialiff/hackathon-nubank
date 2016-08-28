class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @consultant = Consultant.find(1)
    @user = User.find(1)
    # @messages = Message.all.where()
    # @messages = Message.select('id, created_at, message (SELECT name FROM users WHERE  id = user_id) AS name').where(user_id: 1, consultant_id:1)
    @messages = Message.select('id, created_at, message, user_id, consultant_id, (SELECT name FROM users WHERE  id = user_id) AS name').where('user_id = ? AND consultant_id = ?', 1, 1)
    @messages2 = Cmessage.select('id, created_at, message, user_id, consultant_id, (SELECT name FROM consultants WHERE  id = consultant_id) AS name').where('user_id = ? AND consultant_id = ?', 1, 1)
    @messages = @messages + @messages2
    # @messages = Message.select('id, (SELECT name FROM users WHERE  id = user_id) AS name').where(user_id: 1)
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:message, :user_id, :consultant_id)
    end
end

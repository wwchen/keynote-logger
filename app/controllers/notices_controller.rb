class NoticesController < ApplicationController
  # GET /notices
  # GET /notices.json
  def index
    @log = Log.find(params[:log_id])
    @notices = @log.notices

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notices }
    end
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
    @log = Log.find(params[:log_id])
    @notice = @log.notices.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/new
  # GET /notices/new.json
  def new
    @log = Log.find(params[:log_id])
    @notice = Notice.new
    @notice.log_id = @log.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/1/edit
  def edit
    @log = Log.find(params[:log_id])
    @notice = Log.notices.find(params[:id])
  end

  # POST /notices
  # POST /notices.json
  def create
    @log = Log.find(params[:log_id])
    @notice = Notice.new(params[:notice])

    respond_to do |format|
      if @notice.save
        format.html { redirect_to @notice, notice: 'Notice was successfully created.' }
        format.json { render json: @notice, status: :created, location: @notice }
      else
        format.html { render action: "new" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notices/1
  # PUT /notices/1.json
  def update
    @log = Log.find(params[:log_id])
    @notice = Log.notices.find(params[:id])

    respond_to do |format|
      if @notice.update_attributes(params[:notice])
        format.html { redirect_to @notice, notice: 'Notice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @log = Log.find(params[:log_id])
    @notice = Log.notices.find(params[:id])
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to notices_url }
      format.json { head :no_content }
    end
  end
end

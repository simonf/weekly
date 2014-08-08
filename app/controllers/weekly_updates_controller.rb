class WeeklyUpdatesController < ApplicationController
  before_action :set_weekly_update, only: [:show, :edit, :update, :destroy]

  # GET /weekly_updates
  # GET /weekly_updates.json
  def index
    @weekly_updates = WeeklyUpdate.all
  end

  # GET /weekly_updates/1
  # GET /weekly_updates/1.json
  def show
  end

  # GET /weekly_updates/new
  def new
    @weekly_update = WeeklyUpdate.new
  end

  # GET /weekly_updates/1/edit
  def edit
  end

  # POST /weekly_updates
  # POST /weekly_updates.json
  def create
    @weekly_update = WeeklyUpdate.new(weekly_update_params)

    respond_to do |format|
      if @weekly_update.save
        format.html { redirect_to @weekly_update, notice: 'Weekly update was successfully created.' }
        format.json { render :show, status: :created, location: @weekly_update }
      else
        format.html { render :new }
        format.json { render json: @weekly_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_updates/1
  # PATCH/PUT /weekly_updates/1.json
  def update
    respond_to do |format|
      if @weekly_update.update(weekly_update_params)
        format.html { redirect_to @weekly_update, notice: 'Weekly update was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekly_update }
      else
        format.html { render :edit }
        format.json { render json: @weekly_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_updates/1
  # DELETE /weekly_updates/1.json
  def destroy
    @weekly_update.destroy
    respond_to do |format|
      format.html { redirect_to weekly_updates_url, notice: 'Weekly update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

#  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_update
      @weekly_update = WeeklyUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_update_params
      params.require(:weekly_update).permit(:project_id, :person_id, :weekstart, :rag, :percent, :comment)
    end
end

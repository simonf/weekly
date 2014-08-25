class PersonUpdatesController < ApplicationController
  before_action :set_person, only: [:index, :show, :edit, :update, :destroy]

  def index
#    @updates = @person.weekly_updates_by_project(Date.today-7)
    @updates = @person.weekly_updates_by_project(:all)
  end

  def new
    person = Person.find(params[:person])
    project = Project.find(params[:project])
    latest = project.latest_update
    wu = WeeklyUpdate.new(:person => person, :project => project, :rag => latest.rag, :percent => latest.percent, :comment => latest.comment)
    wu.save
    redirect_to edit_weekly_update_path(wu)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

end

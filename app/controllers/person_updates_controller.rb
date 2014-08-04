class PersonUpdatesController < ApplicationController
  before_action :set_person, only: [:index, :show, :edit, :update, :destroy]

  def index
#    @updates = @person.weekly_updates_by_project(Date.today-7)
    @updates = @person.weekly_updates_by_project(:all)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

end

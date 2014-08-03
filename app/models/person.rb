class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 2}
  has_many :weekly_updates
  has_many :projects, :through => :weekly_updates

# Returns a hash whose keys are project objects, and whose values are
# arrays of WeeklyUpdates, ordered with the most recent weekstart first.
#
# Pass either a Date object or :all
  def weekly_updates_by_project(since)
    since = Date.new(2000,01,01) if since == :all
    self.weekly_updates.where(["weekstart > ?",since]).order("project_id, weekstart desc").group_by {|w| w.project}
  end
end

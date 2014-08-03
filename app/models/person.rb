class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 2}
  has_many :weekly_updates
  has_many :projects, :through => :weekly_updates

  def weekly_updates_by_project
    self.weekly_updates.order("project_id, weekstart desc")
  end
end

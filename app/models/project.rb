class Project < ActiveRecord::Base
  has_many :weekly_updates
  has_many :people, :through => :weekly_updates
  validates :name, presence: true
  validates :stage, inclusion: ["Not started","Concept paper","Design","Build"]


  after_initialize do
    if new_record?
	self.active = false
	self.stage = "Not started"
    end
  end

  def latest_update
    self.weekly_updates.order("weekstart desc").first
  end
end

class WeeklyUpdate < ActiveRecord::Base
  belongs_to :project
  belongs_to :person
  validates :project, :presence => true
  validates :person, :presence => true
  validates :rag, :inclusion => %w(Red Amber Green)
  validates :weekstart, :presence => true

  after_initialize do
    if new_record?
        self.rag = "Green"
        self.weekstart = recent_monday
    end
  end

  def for_person(p)
    WeeklyUpdate.find(:where => person_id = p.id)
  end

  def is_current_week?
    self.weekstart == recent_monday
  end

  private
    def recent_monday
      d = Date.parse("Monday")
      if d > Date.today
        d - 7
      else
        d
      end
    end
                 
end

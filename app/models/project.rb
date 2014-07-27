class Project < ActiveRecord::Base
	validates :name, presence: true
	validates :stage, inclusion: ["Not started","Concept paper","Design","Build"]

	after_initialize do
		if new_record?
			self.active = false
			self.stage = "Not started"
		end
	end
end

require 'rails_helper'

RSpec.describe "WeeklyUpdates", :type => :request do
  describe "GET /weekly_updates" do
    it "works! (now write some real specs)" do
      get weekly_updates_path
      expect(response.status).to be(200)
    end
  end
end

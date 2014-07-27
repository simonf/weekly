require "rails_helper"

RSpec.describe WeeklyUpdatesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/weekly_updates").to route_to("weekly_updates#index")
    end

    it "routes to #new" do
      expect(:get => "/weekly_updates/new").to route_to("weekly_updates#new")
    end

    it "routes to #show" do
      expect(:get => "/weekly_updates/1").to route_to("weekly_updates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/weekly_updates/1/edit").to route_to("weekly_updates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/weekly_updates").to route_to("weekly_updates#create")
    end

    it "routes to #update" do
      expect(:put => "/weekly_updates/1").to route_to("weekly_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weekly_updates/1").to route_to("weekly_updates#destroy", :id => "1")
    end

  end
end

require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(name: "Simon"),
      Person.create!(name: "Jo")
    ])
  end

  it "renders a list of people" do
    render
  end
end

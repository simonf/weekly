require 'rails_helper'

RSpec.describe "people/show", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(name: "Simon"))
  end

  it "renders attributes in <p>" do
    render
  end
end

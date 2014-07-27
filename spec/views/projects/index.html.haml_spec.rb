require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :code => "Code",
        :name => "Name"
      ),
      Project.create!(
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Not started".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

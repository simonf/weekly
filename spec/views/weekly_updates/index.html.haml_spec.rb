require 'rails_helper'

RSpec.describe "weekly_updates/index", :type => :view do
  before(:each) do
    assign(:weekly_updates, [
      WeeklyUpdate.create!(
        :project => nil,
        :person => nil,
        :rag => "Rag",
        :percent => 1,
        :comment => "MyText"
      ),
      WeeklyUpdate.create!(
        :project => nil,
        :person => nil,
        :rag => "Rag",
        :percent => 1,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of weekly_updates" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Rag".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

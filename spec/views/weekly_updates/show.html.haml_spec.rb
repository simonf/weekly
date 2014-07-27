require 'rails_helper'

RSpec.describe "weekly_updates/show", :type => :view do
  before(:each) do
    @weekly_update = assign(:weekly_update, WeeklyUpdate.create!(
      :project => nil,
      :person => nil,
      :rag => "Rag",
      :percent => 1,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Rag/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end

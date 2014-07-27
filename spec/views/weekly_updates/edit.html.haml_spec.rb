require 'rails_helper'

RSpec.describe "weekly_updates/edit", :type => :view do
  before(:each) do
    @weekly_update = assign(:weekly_update, WeeklyUpdate.create!(
      :project => nil,
      :person => nil,
      :rag => "MyString",
      :percent => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit weekly_update form" do
    render

    assert_select "form[action=?][method=?]", weekly_update_path(@weekly_update), "post" do

      assert_select "input#weekly_update_project_id[name=?]", "weekly_update[project_id]"

      assert_select "input#weekly_update_person_id[name=?]", "weekly_update[person_id]"

      assert_select "input#weekly_update_rag[name=?]", "weekly_update[rag]"

      assert_select "input#weekly_update_percent[name=?]", "weekly_update[percent]"

      assert_select "textarea#weekly_update_comment[name=?]", "weekly_update[comment]"
    end
  end
end

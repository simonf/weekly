require 'rails_helper'

RSpec.describe "projects/edit", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :code => "MyString",
      :name => "MyString",
      :stage => "MyString",
      :active => false
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_code[name=?]", "project[code]"

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_stage[name=?]", "project[stage]"

      assert_select "input#project_active[name=?]", "project[active]"
    end
  end
end

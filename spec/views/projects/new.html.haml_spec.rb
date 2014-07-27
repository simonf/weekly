require 'rails_helper'

RSpec.describe "projects/new", :type => :view do
  before(:each) do
    assign(:project, Project.new(
      :code => "MyString",
      :name => "MyString",
      :stage => "MyString",
      :active => false
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_code[name=?]", "project[code]"

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_stage[name=?]", "project[stage]"

      assert_select "input#project_active[name=?]", "project[active]"
    end
  end
end

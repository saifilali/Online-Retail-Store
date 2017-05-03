require 'rails_helper'

RSpec.describe "disclaimers/edit", type: :view do
  before(:each) do
    @disclaimer = assign(:disclaimer, Disclaimer.create!(
      :message => "MyString",
      :page => "MyString"
    ))
  end

  it "renders the edit disclaimer form" do
    render

    assert_select "form[action=?][method=?]", disclaimer_path(@disclaimer), "post" do

      assert_select "input#disclaimer_message[name=?]", "disclaimer[message]"

      assert_select "input#disclaimer_page[name=?]", "disclaimer[page]"
    end
  end
end

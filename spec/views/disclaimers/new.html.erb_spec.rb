require 'rails_helper'

RSpec.describe "disclaimers/new", type: :view do
  before(:each) do
    assign(:disclaimer, Disclaimer.new(
      :message => "MyString",
      :page => "MyString"
    ))
  end

  it "renders new disclaimer form" do
    render

    assert_select "form[action=?][method=?]", disclaimers_path, "post" do

      assert_select "input#disclaimer_message[name=?]", "disclaimer[message]"

      assert_select "input#disclaimer_page[name=?]", "disclaimer[page]"
    end
  end
end

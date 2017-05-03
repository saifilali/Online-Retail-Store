require 'rails_helper'

RSpec.describe "disclaimers/index", type: :view do
  before(:each) do
    assign(:disclaimers, [
      Disclaimer.create!(
        :message => "Message",
        :page => "Page"
      ),
      Disclaimer.create!(
        :message => "Message",
        :page => "Page"
      )
    ])
  end

  it "renders a list of disclaimers" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "Page".to_s, :count => 2
  end
end

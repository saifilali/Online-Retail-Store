require 'rails_helper'

RSpec.describe "disclaimers/show", type: :view do
  before(:each) do
    @disclaimer = assign(:disclaimer, Disclaimer.create!(
      :message => "Message",
      :page => "Page"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
    expect(rendered).to match(/Page/)
  end
end

require 'rails_helper'

RSpec.describe "Disclaimers", type: :request do
  describe "GET /disclaimers" do
    it "works! (now write some real specs)" do
      get disclaimers_path
      expect(response).to have_http_status(302)
    end
  end
end

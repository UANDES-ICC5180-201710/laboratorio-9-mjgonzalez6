require 'rails_helper'

RSpec.describe "UserInterests", type: :request do
  describe "GET /user_interests" do
    it "works! (now write some real specs)" do
      get user_interests_path
      expect(response).to have_http_status(200)
    end
  end
end

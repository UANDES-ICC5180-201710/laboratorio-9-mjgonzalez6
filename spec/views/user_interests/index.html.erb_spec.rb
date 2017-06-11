require 'rails_helper'

RSpec.describe "user_interests/index", type: :view do
  before(:each) do
    assign(:user_interests, [
      UserInterest.create!(
        :person => nil,
        :course => nil
      ),
      UserInterest.create!(
        :person => nil,
        :course => nil
      )
    ])
  end

  it "renders a list of user_interests" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

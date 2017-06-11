require 'rails_helper'

RSpec.describe "user_interests/show", type: :view do
  before(:each) do
    @user_interest = assign(:user_interest, UserInterest.create!(
      :person => nil,
      :course => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

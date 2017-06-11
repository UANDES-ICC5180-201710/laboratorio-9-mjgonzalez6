require 'rails_helper'

RSpec.describe "user_interests/new", type: :view do
  before(:each) do
    assign(:user_interest, UserInterest.new(
      :person => nil,
      :course => nil
    ))
  end

  it "renders new user_interest form" do
    render

    assert_select "form[action=?][method=?]", user_interests_path, "post" do

      assert_select "input#user_interest_person_id[name=?]", "user_interest[person_id]"

      assert_select "input#user_interest_course_id[name=?]", "user_interest[course_id]"
    end
  end
end

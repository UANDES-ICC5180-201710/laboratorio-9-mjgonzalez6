require 'rails_helper'

RSpec.describe "user_interests/edit", type: :view do
  before(:each) do
    @user_interest = assign(:user_interest, UserInterest.create!(
      :person => nil,
      :course => nil
    ))
  end

  it "renders the edit user_interest form" do
    render

    assert_select "form[action=?][method=?]", user_interest_path(@user_interest), "post" do

      assert_select "input#user_interest_person_id[name=?]", "user_interest[person_id]"

      assert_select "input#user_interest_course_id[name=?]", "user_interest[course_id]"
    end
  end
end

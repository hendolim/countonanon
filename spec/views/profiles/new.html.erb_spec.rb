require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :class_rank => "MyString",
      :socioeconomic_status => "MyString",
      :living_situation => "MyString",
      :sexual_orientation => "MyString",
      :comfort_with_sexuality => 1,
      :age => 1,
      :is_first_generation_college_student => false,
      :is_physically_disabled => false,
      :is_parent => false,
      :is_single_parent => false,
      :is_from_foster_care => false,
      :is_intercollegiate_athlete => false,
      :is_military => false,
      :is_out_of_state_student => false,
      :is_international_student => false,
      :is_transfer_student => false,
      :user => nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_class_rank[name=?]", "profile[class_rank]"

      assert_select "input#profile_socioeconomic_status[name=?]", "profile[socioeconomic_status]"

      assert_select "input#profile_living_situation[name=?]", "profile[living_situation]"

      assert_select "input#profile_sexual_orientation[name=?]", "profile[sexual_orientation]"

      assert_select "input#profile_comfort_with_sexuality[name=?]", "profile[comfort_with_sexuality]"

      assert_select "input#profile_age[name=?]", "profile[age]"

      assert_select "input#profile_is_first_generation_college_student[name=?]", "profile[is_first_generation_college_student]"

      assert_select "input#profile_is_physically_disabled[name=?]", "profile[is_physically_disabled]"

      assert_select "input#profile_is_parent[name=?]", "profile[is_parent]"

      assert_select "input#profile_is_single_parent[name=?]", "profile[is_single_parent]"

      assert_select "input#profile_is_from_foster_care[name=?]", "profile[is_from_foster_care]"

      assert_select "input#profile_is_intercollegiate_athlete[name=?]", "profile[is_intercollegiate_athlete]"

      assert_select "input#profile_is_military[name=?]", "profile[is_military]"

      assert_select "input#profile_is_out_of_state_student[name=?]", "profile[is_out_of_state_student]"

      assert_select "input#profile_is_international_student[name=?]", "profile[is_international_student]"

      assert_select "input#profile_is_transfer_student[name=?]", "profile[is_transfer_student]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"
    end
  end
end

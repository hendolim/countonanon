require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :class_rank => "Class Rank",
        :socioeconomic_status => "Socioeconomic Status",
        :living_situation => "Living Situation",
        :sexual_orientation => "Sexual Orientation",
        :comfort_with_sexuality => 1,
        :age => 2,
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
      ),
      Profile.create!(
        :class_rank => "Class Rank",
        :socioeconomic_status => "Socioeconomic Status",
        :living_situation => "Living Situation",
        :sexual_orientation => "Sexual Orientation",
        :comfort_with_sexuality => 1,
        :age => 2,
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
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Class Rank".to_s, :count => 2
    assert_select "tr>td", :text => "Socioeconomic Status".to_s, :count => 2
    assert_select "tr>td", :text => "Living Situation".to_s, :count => 2
    assert_select "tr>td", :text => "Sexual Orientation".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

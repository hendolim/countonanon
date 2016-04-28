require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Class Rank/)
    expect(rendered).to match(/Socioeconomic Status/)
    expect(rendered).to match(/Living Situation/)
    expect(rendered).to match(/Sexual Orientation/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end

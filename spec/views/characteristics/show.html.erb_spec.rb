require 'rails_helper'

RSpec.describe "characteristics/show", type: :view do
  before(:each) do
    @characteristic = assign(:characteristic, Characteristic.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

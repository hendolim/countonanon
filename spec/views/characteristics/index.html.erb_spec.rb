require 'rails_helper'

RSpec.describe "characteristics/index", type: :view do
  before(:each) do
    assign(:characteristics, [
      Characteristic.create!(
        :name => "Name"
      ),
      Characteristic.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of characteristics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "characteristics/new", type: :view do
  before(:each) do
    assign(:characteristic, Characteristic.new(
      :name => "MyString"
    ))
  end

  it "renders new characteristic form" do
    render

    assert_select "form[action=?][method=?]", characteristics_path, "post" do

      assert_select "input#characteristic_name[name=?]", "characteristic[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "hosts/index", type: :view do
  before(:each) do
    assign(:hosts, [
      Host.create!(
        :name => "Name",
        :url => "Url",
        :username => "Username",
        :password => "Password"
      ),
      Host.create!(
        :name => "Name",
        :url => "Url",
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  it "renders a list of hosts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end

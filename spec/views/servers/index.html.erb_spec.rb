require 'rails_helper'

RSpec.describe "servers/index", type: :view do
  before(:each) do
    assign(:servers, [
      Server.create!(
        :name => "Name",
        :url => "Url",
        :ip_address => "Ip Address",
        :username => "Username",
        :password => "Password",
        :database_type => "Database Type"
      ),
      Server.create!(
        :name => "Name",
        :url => "Url",
        :ip_address => "Ip Address",
        :username => "Username",
        :password => "Password",
        :database_type => "Database Type"
      )
    ])
  end

  it "renders a list of servers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Ip Address".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Database Type".to_s, :count => 2
  end
end

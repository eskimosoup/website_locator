require 'rails_helper'

RSpec.describe "websites/index", type: :view do
  before(:each) do
    assign(:websites, [
      Website.create!(
        :name => "Name",
        :server => nil,
        :ssh_username => "Ssh Username",
        :ssh_password => "Ssh Password",
        :local_url_one => "Local Url One",
        :local_url_two => "Local Url Two",
        :live_url => "Live Url",
        :secret_key => "Secret Key",
        :database_password => "Database Password",
        :ruby_version => "9.99"
      ),
      Website.create!(
        :name => "Name",
        :server => nil,
        :ssh_username => "Ssh Username",
        :ssh_password => "Ssh Password",
        :local_url_one => "Local Url One",
        :local_url_two => "Local Url Two",
        :live_url => "Live Url",
        :secret_key => "Secret Key",
        :database_password => "Database Password",
        :ruby_version => "9.99"
      )
    ])
  end

  it "renders a list of websites" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Ssh Username".to_s, :count => 2
    assert_select "tr>td", :text => "Ssh Password".to_s, :count => 2
    assert_select "tr>td", :text => "Local Url One".to_s, :count => 2
    assert_select "tr>td", :text => "Local Url Two".to_s, :count => 2
    assert_select "tr>td", :text => "Live Url".to_s, :count => 2
    assert_select "tr>td", :text => "Secret Key".to_s, :count => 2
    assert_select "tr>td", :text => "Database Password".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

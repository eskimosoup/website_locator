require 'rails_helper'

RSpec.describe "websites/show", type: :view do
  before(:each) do
    @website = assign(:website, Website.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Ssh Username/)
    expect(rendered).to match(/Ssh Password/)
    expect(rendered).to match(/Local Url One/)
    expect(rendered).to match(/Local Url Two/)
    expect(rendered).to match(/Live Url/)
    expect(rendered).to match(/Secret Key/)
    expect(rendered).to match(/Database Password/)
    expect(rendered).to match(/9.99/)
  end
end

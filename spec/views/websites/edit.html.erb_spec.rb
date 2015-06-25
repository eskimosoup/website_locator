require 'rails_helper'

RSpec.describe "websites/edit", type: :view do
  before(:each) do
    @website = assign(:website, Website.create!(
      :name => "MyString",
      :server => nil,
      :ssh_username => "MyString",
      :ssh_password => "MyString",
      :local_url_one => "MyString",
      :local_url_two => "MyString",
      :live_url => "MyString",
      :secret_key => "MyString",
      :database_password => "MyString",
      :ruby_version => "9.99"
    ))
  end

  it "renders the edit website form" do
    render

    assert_select "form[action=?][method=?]", website_path(@website), "post" do

      assert_select "input#website_name[name=?]", "website[name]"

      assert_select "input#website_server_id[name=?]", "website[server_id]"

      assert_select "input#website_ssh_username[name=?]", "website[ssh_username]"

      assert_select "input#website_ssh_password[name=?]", "website[ssh_password]"

      assert_select "input#website_local_url_one[name=?]", "website[local_url_one]"

      assert_select "input#website_local_url_two[name=?]", "website[local_url_two]"

      assert_select "input#website_live_url[name=?]", "website[live_url]"

      assert_select "input#website_secret_key[name=?]", "website[secret_key]"

      assert_select "input#website_database_password[name=?]", "website[database_password]"

      assert_select "input#website_ruby_version[name=?]", "website[ruby_version]"
    end
  end
end

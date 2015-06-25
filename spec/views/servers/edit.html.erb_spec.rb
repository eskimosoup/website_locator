require 'rails_helper'

RSpec.describe "servers/edit", type: :view do
  before(:each) do
    @server = assign(:server, Server.create!(
      :name => "MyString",
      :url => "MyString",
      :ip_address => "MyString",
      :username => "MyString",
      :password => "MyString",
      :database_type => "MyString"
    ))
  end

  it "renders the edit server form" do
    render

    assert_select "form[action=?][method=?]", server_path(@server), "post" do

      assert_select "input#server_name[name=?]", "server[name]"

      assert_select "input#server_url[name=?]", "server[url]"

      assert_select "input#server_ip_address[name=?]", "server[ip_address]"

      assert_select "input#server_username[name=?]", "server[username]"

      assert_select "input#server_password[name=?]", "server[password]"

      assert_select "input#server_database_type[name=?]", "server[database_type]"
    end
  end
end

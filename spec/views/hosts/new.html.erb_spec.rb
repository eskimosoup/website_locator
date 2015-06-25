require 'rails_helper'

RSpec.describe "hosts/new", type: :view do
  before(:each) do
    assign(:host, Host.new(
      :name => "MyString",
      :url => "MyString",
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders new host form" do
    render

    assert_select "form[action=?][method=?]", hosts_path, "post" do

      assert_select "input#host_name[name=?]", "host[name]"

      assert_select "input#host_url[name=?]", "host[url]"

      assert_select "input#host_username[name=?]", "host[username]"

      assert_select "input#host_password[name=?]", "host[password]"
    end
  end
end

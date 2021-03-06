require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :surname => "Surname",
        :username => "Username",
        :password => "Password",
        :email => "Email",
        :role => "Role",
        :stars => 1,
        :profile => "Profile",
        :picture => "Picture",
        :additional => "Additional"
      ),
      stub_model(User,
        :name => "Name",
        :surname => "Surname",
        :username => "Username",
        :password => "Password",
        :email => "Email",
        :role => "Role",
        :stars => 1,
        :profile => "Profile",
        :picture => "Picture",
        :additional => "Additional"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Profile".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Additional".to_s, :count => 2
  end
end

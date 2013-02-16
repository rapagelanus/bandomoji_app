require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/' " do
    get '/'
    response.should contain('title', :content => "Home")
  end

  it "should have a Contact page at '/contact' " do
    get '/contact'
    response.should contain('title', :content => "Contact")
  end

  it "should have a About page at '/about' " do
    get '/about'
    response.should contain('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should contain('title', :content => "Help")
  end

  it "should have signup page at '/signup' " do
    get '/signup'
    response.should contain('title', :content => "Sign up")
  end
  it "should have right links on the layout" do
    visit root_path
    response.should contain('title', :content => "Home" )
    click_link "Home"
    response.should contain('title', content => "About")
    click_link "About"
    response.should contain('title', content => "Contact")
    click_link "Contact"
    response.should contain('title', content => "Home")
    click_link "Sign up now!"
    response.should contain('title', :content => "Sign up")

  end
end

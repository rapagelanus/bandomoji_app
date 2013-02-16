require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :key => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have _selector('title', :content => "Contact")
  end

  it "should have a About page at '/about'" do
    get '/about'
    response.should have _selector('title', :content => "About")
  end

  it "should have a Help page at '/help'" do
    get '/help'
    response.should have _selector('title', :content => "Help")
  end

end

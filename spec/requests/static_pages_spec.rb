require 'spec_helper'

describe 'StaticPages' do

  let(:base_title) { "Ruby on Rails Tutorial Sddtc's App" }

  describe 'Home page' do

    it "should have the content 'Sddtc\\'s App'" do
      visit '/static_pages/home'
      page.should have_selector('h1',
                                text: 'Sddtc\'s App')
    end
  end

  it 'should have the right title' do
    visit '/static_pages/home'
    page.should have_selector('title',
                              text: "#{base_title} | Home")
  end

  describe 'Help page' do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1',
                                text: 'Help')
    end
  end

  it 'should have the right title' do
    visit '/static_pages/help'
    page.should have_selector('title',
                              text: "#{base_title} | Help")
  end

  describe 'About page' do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1',
                                text: 'About Us')
    end
  end

  it 'should have the right title' do
    visit '/static_pages/about'
    page.should have_selector('title',
                              text: "#{base_title} | About")
  end


  describe 'Contact page' do

    it "should have Then content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1',
                                text: 'Contact')
    end
  end

  it 'should have Then right title' do
    visit '/static_pages/contact'
    page.should have_selector('title',
                              text: "#{base_title} | Contact")
  end
end

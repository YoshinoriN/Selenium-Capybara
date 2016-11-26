# coding: utf-8
require 'spec_helper'

feature 'Scenario1', js: true do

  background 'Preprocessing' do
    page.driver.browser.manage.window.maximize
  end
  
  scenario 'Show top page' do
    top_page = TopPage.new(Capybara)
  end
end

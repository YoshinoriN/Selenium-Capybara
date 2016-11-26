# coding: utf-8
require 'rubygems'
require 'awesome_print'
require 'capybara/rspec'
require 'selenium-webdriver'
Dir[File.join(Dir.pwd + "/spec/pages/**/*.rb")].sort.each {|f| require f}

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_wait_time = 10
Capybara.app_host = 'http://***.***.***.***'

RSpec.configure do |config|
  config.include Capybara::DSL
end

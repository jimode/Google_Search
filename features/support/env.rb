require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.google.com'
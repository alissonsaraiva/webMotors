require 'capybara/cucumber'
require 'selenium-webdriver'
require 'httparty'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require_relative 'page_object'
require_relative 'helper.rb'


World(Helper)
World(PageObject)

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_web_defaut']
    config.default_max_wait_time = 2
end
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

$env = ENV['BROWSER']
$headless = ENV['HEADLESS']

if $headless
    Capybara.register_driver :selenium do |app|
        Capybara::Poltergeist::Driver.new(app, js_errors: false)
    end
end
Capybara.configure do |c|

if $env == 'firefox'
    c.default_driver = :selenium
elsif $env == 'chrome'
    c.default_driver = :selenium_chrome
elsif $env == 'chrome_headless'
    c.default_driver = :selenium_chrome_headless
end

Capybara.default_max_wait_time = 20
Capybara.app_host = "http://automationpractice.com/index.php"
end
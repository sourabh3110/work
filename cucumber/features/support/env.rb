require 'selenium-webdriver'
require 'byebug'

Before do
    @browser = Browser.new('chrome')
end

After do
    @browser.quit_browser
end
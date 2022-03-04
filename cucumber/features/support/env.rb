require 'selenium-webdriver'
require 'byebug'

Before do
    $browser = Browser.new('chrome')
    $driver = $browser.driver
    $wait = Selenium::WebDriver::Wait.new(timeout: 15)
end

After do
    $browser.quit_browser
end

$screenshot_store_path = "screenshots"
AfterStep do
    file = Tempfile.new(["screenshot_","png"],$screenshot_store_path)
    screenshort = file.path
    file.close(true)
    $browser.driver.save_screenshot(screenshort)
    attach screenshort,"image/png"
end
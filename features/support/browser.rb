class Browser
  attr_reader :browser
  def initialize(browser)
    @driver = start_browser(browser)
    maximize_window
  end

  def start_browser(browser)
    case browser
      when 'chrome'
        Selenium::WebDriver::Chrome.driver_path= File.absolute_path("./chromedriver")
        args = ['--disable-notifications','--disable-extensions']
        args.concat(['--headless']) unless ENV['RUN_BROWSER']
        options = Selenium::WebDriver::Chrome::Options.new(args: args)
        Selenium::WebDriver.for(:chrome, options: options)
      end
  end

  def delete_cookies
    @driver.manage.delete_all_cookies
  end

  def maximize_window
    @driver.manage().window().maximize()
  end

  def navigate_to(url)
    @driver.navigate.to(url)
  end

  def refresh
    @driver.navigate.refresh
  end

  def windows?
    @driver.window_handles
  end

  def switch_to_window(window)
    @driver.switch_to.window(window)
  end

end
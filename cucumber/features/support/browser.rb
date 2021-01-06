class Browser
  attr_reader :driver

  def initialize(browser)
    @driver = start_browser(browser)
    maximize_window
  end

  def start_browser(browser)
    case browser
      when 'chrome'
        Selenium::WebDriver::Chrome.driver_path= File.absolute_path("./chromedriver")
        args = ['--disable-notifications','--disable-extensions']
        args.concat(['--headless']) unless !ENV['RUN_BROWSER']
        options = Selenium::WebDriver::Chrome::Options.new(args: args)
        Selenium::WebDriver.for(:chrome, options: options)
      end
  end

  def delete_cookies
    driver.manage.delete_all_cookies
  end

  def maximize_window
    driver.manage().window().maximize()
  end

  def navigate_to(url)
    driver.navigate.to(url)
  end

  def refresh
    driver.navigate.refresh
  end

  def windows_count?
    driver.window_handles
  end

  def switch_to_window(window)
    driver.switch_to.window(window)
  end

  def close_window
    driver.driver.close
  end

  def quit_browser
    driver.driver.quit
  end

  def scroll(x, y)
    driver.script("window.scrollBy(#{x},#{y})")
  end

  def scroll_to_element(element)
    driver.script("arguments[0].scrollIntoView(true)", element)
  end

end
